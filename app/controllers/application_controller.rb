class ApplicationController < ActionController::API
    include ActionController::Cookies 

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 

    before_action :authorize


    

private 

def authorize 
    current_user = Customer.find_by(id: session[:customer_id])

    render json: { errors: "Not authorized" }, status: :unauthorized unless current_user
end 

    def render_unprocessable_entity_response(e)
        render json: { errors: [e.record.errors.full_messages] }, status: :unprocessable_entity
    end
end

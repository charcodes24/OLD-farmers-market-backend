class ApplicationController < ActionController::API
    include ActionController::Cookies 

    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 

    before_action :authorize, only: [:customer, :vendor]


    

private 

    def authorize 
        if session[:customer_id]
            user = Customer.find_by(id: session[:customer_id])
        elsif session[:vendor_id]
            user = Vendor.find_by(id: session[:vendor_id])
        end

        render json: { errors: "Not authorized" }, status: :unauthorized unless user
        
        # current_user = Customer.find_by(id: session[:customer_id])

        # render json: { errors: "Not authorized" }, status: :unauthorized unless current_user
    end 

    def render_unprocessable_entity_response(e)
        render json: { errors: [e.record.errors.full_messages] }, status: :unprocessable_entity
    end
end

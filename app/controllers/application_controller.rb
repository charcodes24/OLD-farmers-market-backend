class ApplicationController < ActionController::API
    include ActionController::Cookies 


    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response 


    

private 

    def render_record_invalid_response
        render json: { errors: e.record.errors.full_message }, status: :unprocessable_entity
    end
end

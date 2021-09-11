class LoginController < ApplicationController
    # skip_before_action :authorize

    def show 
        if session[:customer_id]
            user = Customer.find_by(id: session[:customer_id]) 
        elsif session[:vendor_id]
            user = Vendor.find_by(id: session[:vendor_id])
        end
        if user
            render json: user 
        else 
            render json: { error: "Not authorized" }, status: :unauthorized 
        end
    end

    
end

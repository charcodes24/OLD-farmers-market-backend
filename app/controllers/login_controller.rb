class LoginController < ApplicationController

    def show 
        user = Customer.find(session[:customer_id]) || Vendor.find_by(session[:vendor_id])
        if user 
            render json: user 
        else 
            render json: { error: "Not authorized" }, status: :unauthorized 
        end
    end

end

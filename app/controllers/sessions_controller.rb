class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create_customer, :create_vendor]

  def create 
    user = Customer.find_by(username: params[:username]) || Vendor.find_by(username: params[:username])
    session
    if user&.authenticate(params[:password])
        if (user.is_vendor)
          session[:vendor_id] = user.id
        else 
          session[:customer_id]
        end
        render json: user 
    else 
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

    def destroy
        session.destroy
        # byebug
        render json: { message: "session deleted" }
    end
end

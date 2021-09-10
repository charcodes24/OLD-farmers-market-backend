class SessionsController < ApplicationController

  def create 
    user = Customer.find_by(username: params[:username]) || Vendor.find_by(username: params[:username])
    session
    if user&.authenticate(params[:password])
        if (user.instance_of? Vendor)
          session[:vendor_id] = user.id
        else 
          session[:customer_id] = user.id
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

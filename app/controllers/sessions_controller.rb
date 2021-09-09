class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create_customer, :create_vendor]

  def create 
    user = Customer.find_by(username: params[:username]) || Vendor.find_by(username: params[:username])
    # byebug
    session
    if user&.authenticate(params[:password])
        session[:customer_id || :vendor_id] = user.id
        render json: user 
    else 
        render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    end
  end

    def destroy
        session.delete :customer_id
        # byebug
        render json: { message: "session deleted" }
    end
end

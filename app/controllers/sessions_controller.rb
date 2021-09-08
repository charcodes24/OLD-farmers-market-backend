class SessionsController < ApplicationController
    skip_before_action :authorize, only: [:create_customer, :create_vendor]

    # def create_customer
    #     customer = Customer.find_by(username: params[:username])
    #     if customer&.authenticate(params[:password])
    #         session[:customer_id] = customer.id 
    #         render json: customer 
    #     else 
    #         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #     end                                                                          
    # end

    # def create_vendor
    #     vendor = Vendor.find_by(username: params[:username])
    #     if vendor&.authenticate(params[:password])
    #         session[:vendor_id] = vendor.id
    #         render json: vendor
    #     else
    #         render json: { errors: ["Invalid username or password"] }, status: :unauthorized
    #     end
    # end


    def destroy
        session.delete :customer_id
        head :no_content 
    end
end

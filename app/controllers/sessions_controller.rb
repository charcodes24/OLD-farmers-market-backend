class SessionsController < ApplicationController

    def create 
        customer = Customer.find_by(username: params[:username])
        session[:customer_id] = customer.id 
        render json: customer 
                                                                                                       
    end

    def destroy
        session.delete :customer_id
        head :no_content 
    end
end

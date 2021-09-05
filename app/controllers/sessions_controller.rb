class SessionsController < ApplicationController

    def index
        session[:session_hello] ||= "World"
        cookies[:cookies_hello] ||= "World"
        byebug
        render json: { session: session, cookies: cookies.to_hash }
    end

    def create 
        customer = Customer.find_by(username: params[:username])
        session[:customer_id] = customer.id 
        render json: customer 
                                                                                                       
    end
end

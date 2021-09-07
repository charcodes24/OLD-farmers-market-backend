class CustomersController < ApplicationController
  skip_before_action :authorize, only: :create 

  # GET /customers/1
  def show
    customer = Customer.find(session[:customer_id])
    if customer 
      render json: customer 
    else 
      render json: { error: "Not authorized" }, status: :unauthorized 
    end
  end

  # POST /customers
  def create
    customer = Customer.create!(customer_params)
    session[:user_id] = customer.id 
    render json: customer, status: :created 
  end

  # PATCH/PUT /customers/1
  def update
    if @customer.update(customer_params)
      render json: @customer
    else
      render json: @customer.errors, status: :unprocessable_entity_
    end
  end

  # DELETE /customers/1
  def destroy
    @customer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      customer_params = params.require(:customer).permit(:username, :password, :password_confirmation)
    end
end

class VendorsController < ApplicationController
  skip_before_action :authorize

  # GET /vendors
  def index
    vendors = Vendor.all
    render json: vendors
  end

  # GET /vendors/1
  def show
    vendor = Vendor.find(session[:vendor_id])
    byebug
    if vendor 
      render json: vendor 
    else 
      render json: { error: "Not authorized" }, status: :unauthorized 
    end
  end

  # POST /vendors
  def create
    vendor = Vendor.create!(vendor_params)
    sessions[:vendor_id] = vendor.id
    render json: vendor, status: :created
  end

  # PATCH/PUT /vendors/1
  def update
    if @vendor.update(vendor_params)
      render json: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vendors/1
  def destroy
    @vendor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vendor_params
      params.require(:vendor).permit(:name, :description, :category, :username, :password, :password_confirmation)
    end
end

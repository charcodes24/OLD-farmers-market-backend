class ItemsController < ApplicationController
  skip_before_action :authorize

  # GET /items
  def index
    items = Item.where(vendor_id: params[:vendor_id].to_i)
    # byebug
    render json: items, include: :vendor
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    item = Item.create!(item_params)
    render json: item, status: :created
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:name, :image_url, :price, :vendor_id)
    end
end

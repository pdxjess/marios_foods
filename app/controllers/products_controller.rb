class ProductsController < ApplicationController
  before_action :get_product, only: [:edit, :show, :update, :destroy]

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(params_permit)
    if @product.save
      redirect_to products_path
    else
      render :new_product_path
    end
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

  private
  def get_product
    @product = Product.find(params[:id])
  end

  def params_permit
    params.require(:product).permit(:name, :country_origin, :cost)
  end
end

class ProductsController < ApplicationController
  before_action :get_product, only: [:edit, :show, :update, :destroy]

  def index
    @products = Product.all
  end

  def create
    @product = Product.new(params_permit)
    if @product.save
      flash[:notice] = "Product successfully added"
      redirect_to products_path
    else
      flash[:notice] = "Problem adding product"
      render :new
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
    if @product.update(params_permit)
      flash[:notice] = "Product successfully updated"
      redirect_to products_path
    else
      flash[:notice] = "Problem updating product"
      render :edit
    end
  end

  def destroy
    @product.delete
    redirect_to products_path
  end
  
  def featured
  end

  private
  def get_product
    @product = Product.find(params[:id])
  end

  def params_permit
    params.require(:product).permit(:name, :country_origin, :cost)
  end
end

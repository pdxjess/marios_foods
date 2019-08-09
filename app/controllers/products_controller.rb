class ProductsController < ApplicationController
  before_action :get_product, only: [:create, :edit, :show, :update, :destroy]

  def index
    @products = Product.all
  end

  def create
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



end

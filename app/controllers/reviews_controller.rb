class ReviewsController < ApplicationController

  def new
    @product = Product.find(params[:product_id].to_i)
    @review = @product.reviews.new
  end
end

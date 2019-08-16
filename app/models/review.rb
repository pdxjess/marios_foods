class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, :product_id, presence: true
  belongs_to :product
end

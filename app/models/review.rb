class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, presence: true
  belongs_to :product
end

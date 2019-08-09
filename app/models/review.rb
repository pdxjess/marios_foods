class Review < ActiveRecord::Base
  validates :author, :content_body, :rating, presence: true
  validates :content_body, length: { in: 50..250, wrong_length: "Reviews must be between 50 and 250 characters in length"}, presence: true
  belongs_to :product
end

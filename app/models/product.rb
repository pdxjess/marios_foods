class Product < ApplicationRecord
  validates :name, :country_origin, :cost, presence: true
  validates :cost, numericality: true
  has_many :reviews, dependent: :destroy
end

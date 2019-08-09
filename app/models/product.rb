class Product < ApplicationRecord
  validates :name, :country_origin, :cost, presence: true
  validates :cost, numericality: true
  has_many :reviews, dependent: :delete_all

  scope :made_in_usa, -> {where("country_origin = 'United States'")}

  def self.seed_db(how_many)
    how_many.times do
      Product.create!(
        name: Faker::Food.ingredient,
        country_origin: (CS.countries.map {|key, value| value}).sample, cost: rand(0.24...33.23))
      end
    end
end

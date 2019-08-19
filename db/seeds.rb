Product.destroy_all

50.times do |index|
  @product = Product.create!(
    name: Faker::Coffee.blend_name,
    cost: Faker::Number.between(from: 7, to: 40),
    country_of_origin: Faker::Address.country_code_long)

      rand(3..10).times do |index|
        @reviews = @product.reviews.create!(
          author: Faker::Name.name,
          rating: Faker::Number.within(range: 1..5),
          content_body: Faker::Lorem.characters(number: 50)
        )
      end
    end

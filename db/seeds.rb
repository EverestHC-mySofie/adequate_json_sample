# frozen_string_literal: true

20.times do |i|
  Category.create!(name: Faker::Commerce.unique.department)
end

100.times do
  Product.create!(name: Faker::Commerce.product_name,
                  description: Faker::Lorem.paragraph,
                  price: Faker::Commerce.price(range: 0..1_000.0),
                  category: Category.order('RANDOM()').limit(1).first)
end

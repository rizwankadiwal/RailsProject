# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Product.destroy_all
Category.destroy_all

5.times do
  new_category = Category.create(category_name: Faker::Commerce.department)
  100.times do
    new_category.products.create(product_name: Faker::Commerce.product_name,
                                 sku: Faker::Number.unique.number(7),
                                 price: Faker::Number.between(1,100),
                                 stock_quantity: Faker::Number.between(1,999))

    puts "Successfully ran seed script."
    puts "Generated #{Product.count} products."
    puts "Generated #{Category.count} categories."
  end
end
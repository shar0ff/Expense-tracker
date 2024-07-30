# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

ActiveRecord::Base.transaction do

  Operation.destroy_all
  Category.destroy_all


  10.times do
    category = Category.create!(
      name: Faker::Commerce.department,
      description: Faker::Lorem.sentence
    )


    5.times do
      Operation.create!(
        amount: Faker::Commerce.price(range: 10..1000, as_string: false),
        odate: Faker::Date.backward(days: 30),
        description: Faker::Lorem.sentence,
        category_id: category.id,
        otype: %w[income expense].sample
      )
    end
  end
end

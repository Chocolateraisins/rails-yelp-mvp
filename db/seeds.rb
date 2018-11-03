# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@allowed_categories = ["chinese", "italian", "japanese", "french", "belgian"]

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name: 'Dishoom',
    address: '7 Boundary St, London E2 7JE',
    phone_number: 0041445123344,
    category: @allowed_categories.sample
  },
   {
    name: 'Vrate',
    address: '7 Java Stree, Machaster E2 7JE',
    phone_number: 00414451232134,
    category: @allowed_categories.sample
  },
  {
    name: 'Gilli',
    address: 'Boue cocean road, Zurich 8006',
    phone_number: 00414451232134,
    category: @allowed_categories.sample
  },
  {
    name: 'Seabird',
    address: 'Papaya str, Ireland 8006',
    phone_number: 00414451232134,
    category: @allowed_categories.sample
  },
  {
    name: 'Pizza East',
    address: '56A Shoreditch High St, London E1 6PQ',
    phone_number: 0041445121531,
    category: @allowed_categories.sample
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'







puts "Remove all entries"
Restaurant.destroy_all
puts "creating new random restaurants and reviews"


10.times do |i|
  restaurant = Restaurant.create(name: Faker::Name.middle_name, address: (Faker::Address.street_address Faker::Address.city), phone_number: Faker::PhoneNumber.subscriber_number, category: @allowed_categories.sample)
  restaurant.save!
  puts "Just saved the restaurant #{restaurant.name}."
end




  # Faker::Food.description


# create_table "restaurants", force: :cascade do |t|
#     t.string "name"
#     t.text "address"
#     t.integer "phone_number"
#     t.string "category"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#   end

#   create_table "reviews", force: :cascade do |t|
#     t.text "content"
#     t.integer "rating"
#     t.integer "restaurant_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"

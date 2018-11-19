# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Meal.destroy_all
Meal.create!(user_id: 1, name: "Grape Leaves",location:"Ramat Aviv", date: DateTime.new(2001,2,3.5),price:100,capacity:2, type_of_food:"Arabic", photo:"https://www.google.co.il/url?sa=i&source=images&cd=&ved=2ahUKEwjp2NmDoODeAhWCmLQKHXPmAo4QjRx6BAgBEAU&url=https%3A%2F%2Fwww.drweil.com%2Fdiet-nutrition%2Frecipes%2Fmediterranean-stuffed-grape-leaves%2F&psig=AOvVaw07PlIy2fENA8W5jTjjWUiX&ust=1542709802785584"
)

User.create!(email:"")
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts 'Cleaning database...'
Meal.destroy_all


  user = User.new(
    email: "nono@gmail.com",
    password: "123456"
  )
  user.save!

   user = User.new(
    email: "cory@gmail.com",
    password: "123456"
  )
  user.save!


url ='https://www.drweil.com/wp-content/uploads/2016/12/diet-nutrition_recipes_mediterranean-stuffed-grape-leaves_2928x2114_000005633932-1024x768.jpg'
meal1 = Meal.new(
  user_id: User.first.id,
  name: "Grape Leaves",
  location:"Ramat Aviv",
  date: DateTime.new(2001,2,3.5),
  price:100,
  capacity:3,
  type_of_food:"Arabic Food",
)
meal1.remote_photo_url = url
meal1.save

url ='https://www.n-va.be/sites/default/files/styles/style_agenda_detail/public/generated/images/agenda/spaghetti_5.jpg?itok=Di4ClNDO&timestamp=1504431382'
meal2 = Meal.new(
  user_id: User.first.id,
  name: "Spaghetti",
  date: DateTime.new(2018,7,3.5),
  price: 70,
  capacity:2,
  type_of_food:"Italian food",
  location:"Dezingof",
)
meal2.remote_photo_url = url
meal2.save

url = 'https://www.budgetbytes.com/wp-content/uploads/2016/06/Pressure-Cooker-Chicken-and-Rice-V2.jpg'
meal3 = Meal.new(
  user_id: User.first.id,
  name: "CHICKEN AND RICE",
  location:"Hawaii",
  date: DateTime.new(2018,8,3.5),
  price:150,
  capacity:4,
  type_of_food:"Indian food",
)
meal3.remote_photo_url = url
meal3.save

url ='https://storage.hidabroot.org/Graphics/Modules/News/Pics/76582_tumb_750Xauto.jpg'
meal4 = Meal.new(
  user_id: User.first.id,
  name: "Sushi",
  location:"Haifa",
  date: DateTime.new(2019,1,3.5),
  price:200,
  capacity:1,
  type_of_food:"Japanese Food",
)
meal4.remote_photo_url = url
meal4.save

url = 'https://img.taste.com.au/P9S52CJe/w643-h428-cfill-q90/taste/2016/11/chilli-soy-salmon-with-wok-fried-noodles-91891-1.jpeg'
meal5 = Meal.new(
  user_id: User.first.id,
  name: "Chilli Soy Salmon with Wok-fried Noodles",
  location:"london",
  date: DateTime.new(2018,12,3.5),
  price:200,
  capacity:2,
  type_of_food:"chinese food" 
)
meal5.remote_photo_url = url
meal5.save

url = 'https://shamlola.s3.amazonaws.com/Shamlola_Images/9/src/3551f334c03154a16874e53f8c43b87c9eed48a8.jpg'
meal6 = Meal.new(
  user_id: User.first.id,
  name: "Kubi",
  location:"Istanbul",
  date: DateTime.new(2018,11,3.5),
  price:60,
  capacity:3,
  type_of_food:"Arabic Food",
)
meal6.remote_photo_url = url
meal6.save

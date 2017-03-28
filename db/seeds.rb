# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email:"qwaszx@qwaszx.qw",password:"121212",password_confirmation:"121212",admin:true,name:"Admin")
User.create!(email:"qwaszx@qwaszx.qw",password:"121212",password_confirmation:"121212",admin:false,name:"Courier1")
User.create!(email:"qwaszx@qwaszx.qw",password:"121212",password_confirmation:"121212",admin:false,name:"Courier2")
User.create!(email:"qwaszx@qwaszx.qw",password:"121212",password_confirmation:"121212",admin:false,name:"Courier3")
Order.create!(title:"first_order",delivered:false,user_id:1)
Order.create!(title:"second_order",delivered:false,user_id:1)
Order.create!(title:"third_order",delivered:false,user_id:1)
Order.create!(title:"forth_order",delivered:false,user_id:1)
Order.create!(title:"fifth_order",delivered:false,user_id:1)
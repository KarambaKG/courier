# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email:"admin@gmail.com",password:"123456",password_confirmation:"123456",admin:true,name:"Admin")
User.create!(email:"courier1@gmail.com",password:"123456",password_confirmation:"123456",admin:false,name:"Courier1")
User.create!(email:"courier2@gmail.com",password:"123456",password_confirmation:"123456",admin:false,name:"Courier2")
User.create!(email:"courier3@gmail.com",password:"123456",password_confirmation:"123456",admin:false,name:"Courier3")
User.create!(email:"courier4@gmail.com",password:"123456",password_confirmation:"123456",admin:false,name:"Courier4")
User.create!(email:"courier5@gmail.com",password:"123456",password_confirmation:"123456",admin:false,name:"Courier5")
User.create!(email:"courier6@gmail.com",password:"123456",password_confirmation:"123456",admin:false,name:"Courier6")
Order.create!(title:"first_order",delivered:false,user_id:2)
Order.create!(title:"second_order",delivered:false,user_id:2)
Order.create!(title:"third_order",delivered:false,user_id:2)
Order.create!(title:"forth_order",delivered:false,user_id:3)
Order.create!(title:"fifth_order",delivered:false,user_id:3)

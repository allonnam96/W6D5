# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
c1 = Cat.create!(name:"Allon",color:"orange",sex:"M",birth_date:"1/1/2020")
c2 = Cat.create!(name:"Jason",color:"orange",sex:"M",birth_date:"1/2/2020")
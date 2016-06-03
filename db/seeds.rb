
title = [""]
brands = ["Armani Exchange", "Burton", "Calvin Klein", "Guess", "Marc Jacobs"]
kinds = ["Shirt", "Hat", "Jacket", "Sweater", "Gloves"]
colors = ["red", "blue", "green", "black", "white"]



30.times do
  Found.create(
     user_id: rand(1..10),
     title:Faker::Commerce.product_name,
     brand: (brands[(rand(0..3))]),
     category: "Clothing",
     kind: (kinds[(rand(0..4))]),
     color: (colors[(rand(0..4))]),
     description: Faker::Company.catch_phrase,
     location: Faker::Address.street_address
      )
end


Found.create(
   user_id: 4,
   title: "Found a jacket",
   brand: "Calvin Klein",
   category: "Clothing",
   kind: "Coat",
   color: "Black",
   description: "Found black Calvin Klein jacket at Folsom.",
   location: "Folsom St"
  )

Found.create(
   user_id: (rand(1..50)),
   title: "Found bag at airport",
   brand: "Champion",
   category: "Personal Items",
   kind: "Travel Effects",
   color: "Black",
   description: "Small black bag with passports and credit cards.",
   location: "Gate A20 SFO"
  )

Found.create(
   user_id: (rand(1..50)),
   title: "Found headphones",
   brand: "Bose",
   category: "Electronics",
   kind: "Headphones",
   color: "Black",
   description: "Wireless noise canceling headphones.",
   location: "Airplane SK0984 SFO"
  )

Found.create(
   user_id: (rand(1..50)),
   title: "Found an iphone",
   brand: "Apple",
   category: "Electronics",
   kind: "Mobile phone",
   color: "Gray",
   description: "iphone 5s, gray and purple IS skincase.",
   location: "Found at the Serramonte Mall"
  )

Found.create(
   user_id: (rand(1..50)),
   title: "Found sheep doll",
   brand: "Sheep",
   category: "Personal Items",
   kind: "Toys",
   color: "Beige",
   description: "Small sheep, 5 inches long, off white(as much loved), large black eyes and beads as filler for feet, answers to the name Sheepie - distraught 8 year old girl wants him back.",
   location: "Airplane SK0984 SFO"
  )

Lost.create(
  title: "Lost my favorite jacket",
  brand: "Calvin Klein",
  category: "Clothing",
  kind: "Jacket",
  color: "Black",
  description: "I lost my jacket between 4th and Folsom. It's a black Calvin Klein with a silver zipper."
  )






# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

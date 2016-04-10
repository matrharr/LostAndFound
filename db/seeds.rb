

brands = ["Armani Exchange", "Burton", "Calvin Klein", "Guess", "Marc Jacobs"]
kinds = ["Shirt", "Hat", "Jacket", "Sweater", "Gloves"]
colors = ["red", "blue", "green", "black", "white"]


30.times do
  Found.create(
     user_id: rand(1..10),
     title:Faker::Lorem.word,
     brand: (brands[(rand(0..3))]),
     category: "Clothing",
     kind: (kinds[(rand(0..4))]),
     color: (colors[(rand(0..4))]),
     description: Faker::Lorem.sentence(8),
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

Lost.create(
  title: Faker::Lorem.word,
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

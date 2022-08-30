# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create(
  {email: "peter.wolf@gmail.com", first_name: "Peter" , last_name: "Wolf", user_name: "petcare-pete", password: "123456" },
  {email: "chris.cuddler@gmail.com", first_name: "Chris", last_name: "Cuddler", user_name: "kitten-X", password: "123456" },
  {email: "patrick.parrot@gmail.com", first_name: "Patrick", last_name: "Parrot", user_name: "echoecho", password: "123456" },
  {email: "steven.strange@gmail.com", first_name: "Steven", last_name: "Strange", user_name: "quiet-stevie", password: "123456" },
  {email: "henry.rubin@gmail.com", first_name: "Henry", last_name: "Rubin", user_name: "glamour", password: "123456" },
  {email: "william.butler@gmail.com", first_name: "William", last_name: "Butler", user_name: "palace-brother", password: "123456" },
  {email: "lydia.locksmith@gmail.com", first_name: "Lydia", last_name: "Locksmith", user_name: "silent-lydia", password: "123456" },
  {email: "ariana.antler@gmail.com", first_name: "Ariana", last_name: "Antler", user_name: "ari-ant", password: "123456" },
)

puts "Creating offers"

Offer.create(user: User.last, title: "Mina needs a cat sitter",
description: "Our 10 year old cat Mina needs an
experienced petsitter for the whole month of October.
We live in a beautiful 2-room apartment in Kreuzberg.
It is very sunny with a balcony. Mina is a British
short hair and is used to stay indoors all
the time. She is super cuddly and needs a lot of attention.", pet:"British Shorthair cat")
puts "Offers Created"

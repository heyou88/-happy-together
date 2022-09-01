# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Offer.destroy_all
User.destroy_all

user1 = User.create(
  email: "peter.wolf@gmail.com", first_name: "Peter" , last_name: "Wolf", user_name: "petcare-pete", password: "123456"),
user2 = User.create(
  email: "chris.cuddler@gmail.com", first_name: "Chris", last_name: "Cuddler", user_name: "kitten-X", password: "123456"),
user3 = User.create(
  email: "patrick.parrot@gmail.com", first_name: "Patrick", last_name: "Parrot", user_name: "echoecho", password: "123456"),
user4 = User.create(
  email: "steven.strange@gmail.com", first_name: "Steven", last_name: "Strange", user_name: "quiet-stevie", password: "123456"),
user5 = User.create(
  email: "henry.rubin@gmail.com", first_name: "Henry", last_name: "Rubin", user_name: "glamour", password: "123456"),
user6 = User.create(
  email: "william.butler@gmail.com", first_name: "William", last_name: "Butler", user_name: "palace-brother", password: "123456"),
user7 = User.create(
  email: "lydia.locksmith@gmail.com", first_name: "Lydia", last_name: "Locksmith", user_name: "silent-lydia", password: "123456"),
user8 = User.create(
  email: "ariana.antler@gmail.com", first_name: "Ariana", last_name: "Antler", user_name: "ari-ant", password: "123456"),
user9 = User.create(
  email: "giorgina.vasari@gmail.com", first_name: "Giorgina", last_name: "Vasari", user_name: "medici", password: "123456"),
user10 = User.create(
  email: "sandra.sitwell@gmail.com", first_name: "Sandra", last_name: "Sitwell", user_name: "sitting-dame", password: "123456")



puts "Creating offers"

offer1 = Offer.create(user: user10, title: "Mina needs a cat sitter",
description: "Our 10 year old cat Mina needs an
experienced petsitter for the whole month of October.
We live in a beautiful 2-room apartment in Kreuzberg.
It is very sunny with a balcony. Mina is a British
short hair and is used to stay indoors all
the time. She is super cuddly and needs a lot of attention.", pet:"British Shorthair cat", address: "Katzbachstraße 3, 10965 Berlin", start_date:	"01.10.2022", end_date:	"31.10.2022")


offer2  = Offer.create(
  user: user9, title: "Lively Dalmatiner lady Daisy needs an experienced dog sitter", description: "Who wants to take care of our lovely Daisy.
  She is a strong willed but good hearted 13- year old Dalmatiner,
  that needs lots of running and playing, while we are away for a couple of days in the beginning of November.
  We live in a beautiful area with lots of parks and woods in the surrounding area.
  The house we are offering has 300 square meters and a garden with a lot of other animals that come over to visit and play with Daisy.
  Physical fitness and some conflict solving experience on your side might come handy" , pet: "Dalmatiner", address: "Hundekehlestraße 3, 14199 Berlin", start_date: "01.11.2022", end_date: "05.11.2022"),

offer3  = Offer.create(
  user: user5, title: "Parrot Fridolin is looking for a petsitter", description: "	Are you experienced in taking care of intelligent birds?
  We are looking for a friendly and diligent bird sitter for our 7-year-old parrot Fridolin.
  He is a really attentive and funny creature that needs a lot of attention.
  You should have a great sense of humor and a lot of tolerance for insults.
  We offer you to live in a very beautiful and quiet ground floor apartment in Papageienviertel for 2 whole months.
  Please contact us, so we can get to know each other." , pet: "parrot", address: "Badstraße 67, 13357 Berlin", start_date: "15.10.2022", end_date: "14.12.2022"),

offer4  = Offer.create(
  user: user8, title: "Anton needs a pet sitter over Christmas", description: "We offer you a 10-days rent-free stay in the company of our Anton.
  He is a special kind of pet, so you should be prepared to adapt to his habits and needs.
  Our comfy two storey home has all the luxury you could wish for and some big ant hills in the garden.
  Before you contact us, make sure you are not afraid of insects." , pet: "anteater", address: "Ameisenweg 4, 13589 Berlin", start_date: "20.12.2022", end_date: "30.12.2022")

  puts "Offers Created"

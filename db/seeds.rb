# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Offer.destroy_all
User.destroy_all

require "open-uri"



user1 = User.new(
  email: "peter.wolf@gmail.com", first_name: "Peter" , last_name: "Wolf", user_name: "petcare-pete", password: "123456")
pic_user1 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662039687/sitpet4bed/Petsitter%20User1%20peter%20wolf/Dog-Beach-Man-Sand-Friends-Glasses-Vacation-6758289_cesdrt.jpg"
file1 = URI.open(pic_user1)
user1.photo.attach(io: file1, filename: "Peter_Wolf.jpg", content_type: "image/png")
user1.save

user2 = User.new(
  email: "chris.cuddler@gmail.com", first_name: "Chris", last_name: "Cuddler", user_name: "kitten-X", password: "123456")
pic_user2 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662038609/sitpet4bed/Petsitter%20User2%20Chris%20Cuddler/Man_with_a_Cat_on_his_head_-_Manhattan__286179412197_29_grnqvz.jpg"
file2 = URI.open(pic_user3)
user2.photo.attach(io: file2, filename: "Chris_Cuddler.jpg", content_type: "image/png")
user2.save


user3 = User.new(
  email: "patrick.parrot@gmail.com", first_name: "Patrick", last_name: "Parrot", user_name: "echoecho", password: "123456")
pic_user3 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662038951/sitpet4bed/Petsitter%20User3%20Patrick%20Parrot/Ara_militaris_-pirate_festival__282007_29-8a_ue0jcq.jpg"
file3 = URI.open(pic_user3)
user3.photo.attach(io: file3, filename: "Patrick_Parrot.jpg", content_type: "image/png")
user3.save


user4 = User.new(
  email: "steven.strange@gmail.com", first_name: "Steven", last_name: "Strange", user_name: "quiet-stevie", password: "123456")
pic_user4 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662039180/sitpet4bed/Petsitter%20User4%20Steven%20Strange/dog-and-man-175549_1280_puyuol.jpg"
file4 = URI.open(pic_user4)
user4.photo.attach(io: file4, filename: "Steven_Strange.jpg", content_type: "image/png")
user4.save



user5 = User.new(
  email: "henry.rubin@gmail.com", first_name: "Henry", last_name: "Rubin", user_name: "glamour", password: "123456")
pic_user5 = ""
file5 = URI.open(pic_user5)
user5.photo.attach(io: file5, filename: "Henry_Rubin.jpg", content_type: "image/png")
user5.save



user6 = User.new(
  email: "william.butler@gmail.com", first_name: "William", last_name: "Butler", user_name: "palace-brother", password: "123456")
pic_user6 = ""
file6 = URI.open(pic_user6)
user6.photo.attach(io: file6, filename: "William_Butler.jpg", content_type: "image/png")
user6.save



user7 = User.new(
  email: "lydia.locksmith@gmail.com", first_name: "Lydia", last_name: "Locksmith", user_name: "silent-lydia", password: "123456")
pic_user7 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662039949/sitpet4bed/Petsitter%20User7%20Lydia%20Locksmith/47055535804_daea4cdfdf_b_afmeet.jpg"
file7 = URI.open(pic_user7)
user7.photo.attach(io: file7, filename: "Lydia_Locksmith.jpg", content_type: "image/png")
user7.save


user8 = User.new(
  email: "ariana.antler@gmail.com", first_name: "Ariana", last_name: "Antler", user_name: "ari-ant", password: "123456")
pic_user8 = ""
file8 = URI.open(pic_user8)
user8.photo.attach(io: file8, filename: "Lydia_Locksmith.jpg", content_type: "image/png")
user8.save


user9 = User.new(
email: "giorgina.vasari@gmail.com", first_name: "Giorgina", last_name: "Vasari", user_name: "medici", password: "123456")
pic_user9 = ""
file9 = URI.open(pic_user9)
user9.photo.attach(io: file9, filename: "Lydia_Locksmith.jpg", content_type: "image/png")
user9.save

user10 = User.new(
email: "sandra.sitwell@gmail.com", first_name: "Sandra", last_name: "Sitwell", user_name: "sitting-dame", password: "123456")
pic_user10 = ""
file10 = URI.open(pic_user10)
user10.photo.attach(io: file10, filename: "Lydia_Locksmith.jpg", content_type: "image/png")
user10.save


# puts "Creating offers"

offer1 = Offer.new(user: user10, title: "Mina needs a cat sitter",
description: "Our 10 year old cat Mina needs an
experienced petsitter for the whole month of October.
We live in a beautiful 2-room apartment in Kreuzberg.
It is very sunny with a balcony. Mina is a British
short hair and is used to stay indoors all
the time. She is super cuddly and needs a lot of attention.", pet:"British Shorthair cat", address: "Katzbachstraße 3, 10965 Berlin", start_date:	"01.10.2022", end_date:	"31.10.2022")


# offer2  = Offer.new(
#   user: user9, title: "Lively Dalmatiner lady Daisy needs an experienced dog sitter", description: "Who wants to take care of our lovely Daisy.
#   She is a strong willed but good hearted 13- year old Dalmatiner,
#   that needs lots of running and playing, while we are away for a couple of days in the beginning of November.
#   We live in a beautiful area with lots of parks and woods in the surrounding area.
#   The house we are offering has 300 square meters and a garden with a lot of other animals that come over to visit and play with Daisy.
#   Physical fitness and some conflict solving experience on your side might come handy" , pet: "Dalmatiner", address: "Hundekehlestraße 3, 14199 Berlin", start_date: "01.11.2022", end_date: "05.11.2022")

# offer3  = Offer.new(
#   user: user5, title: "Parrot Fridolin is looking for a petsitter", description: "	Are you experienced in taking care of intelligent birds?
#   We are looking for a friendly and diligent bird sitter for our 7-year-old parrot Fridolin.
#   He is a really attentive and funny creature that needs a lot of attention.
#   You should have a great sense of humor and a lot of tolerance for insults.
#   We offer you to live in a very beautiful and quiet ground floor apartment in Papageienviertel for 2 whole months.
#   Please contact us, so we can get to know each other." , pet: "parrot", address: "Badstraße 67, 13357 Berlin", start_date: "15.10.2022", end_date: "14.12.2022")

# offer4  = Offer.new(
#   user: user8, title: "Anton needs a pet sitter over Christmas", description: "We offer you a 10-days rent-free stay in the company of our Anton.
#   He is a special kind of pet, so you should be prepared to adapt to his habits and needs.
#   Our comfy two storey home has all the luxury you could wish for and some big ant hills in the garden.
#   Before you contact us, make sure you are not afraid of insects." , pet: "anteater", address: "Ameisenweg 4, 13589 Berlin", start_date: "20.12.2022", end_date: "30.12.2022")

#   puts "Offers Created" =end

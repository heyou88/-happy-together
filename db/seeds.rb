# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Message.destroy_all
Chatroom.destroy_all
Booking.destroy_all
Offer.destroy_all
User.destroy_all

require "open-uri"


user1 = User.new(
  email: "peter.wolf@gmail.com", first_name: "Peter" , last_name: "Wolf", user_name: "petcare-pete", password: "123456", user_description: "")
pic_user1 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662039687/sitpet4bed/Petsitter%20User1%20peter%20wolf/Dog-Beach-Man-Sand-Friends-Glasses-Vacation-6758289_cesdrt.jpg"
file1 = URI.open(pic_user1)
user1.photo.attach(io: file1, filename: "Peter_Wolf.jpg", content_type: "image/png")
user1.save

user2 = User.new(
  email: "chris.cuddler@gmail.com", first_name: "Chris", last_name: "Cuddler", user_name: "kitten-X", password: "123456", user_description: "")
pic_user2 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662038609/sitpet4bed/Petsitter%20User2%20Chris%20Cuddler/Man_with_a_Cat_on_his_head_-_Manhattan__286179412197_29_grnqvz.jpg"
file2 = URI.open(pic_user2)
user2.photo.attach(io: file2, filename: "Chris_Cuddler.jpg", content_type: "image/png")
user2.save


user3 = User.new(
  email: "patrick.parrot@gmail.com", first_name: "Patrick", last_name: "Parrot", user_name: "echoecho", password: "123456", user_description: "")
pic_user3 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662038951/sitpet4bed/Petsitter%20User3%20Patrick%20Parrot/Ara_militaris_-pirate_festival__282007_29-8a_ue0jcq.jpg"
file3 = URI.open(pic_user3)
user3.photo.attach(io: file3, filename: "Patrick_Parrot.jpg", content_type: "image/png")
user3.save


user4 = User.new(
  email: "steven.strange@gmail.com", first_name: "Steven", last_name: "Strange", user_name: "quiet-stevie", password: "123456", user_description: "")
pic_user4 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662039180/sitpet4bed/Petsitter%20User4%20Steven%20Strange/dog-and-man-175549_1280_puyuol.jpg"
file4 = URI.open(pic_user4)
user4.photo.attach(io: file4, filename: "Steven_Strange.jpg", content_type: "image/png")
user4.save



user5 = User.new(
  email: "henry.rubin@gmail.com", first_name: "Henry", last_name: "Rubin", user_name: "glamour", password: "123456", user_description: "")
pic_user5 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662038986/sitpet4bed/offer3%20user5%20Mr.%20Rubin%20with%20a%20parrot/Amazona_finschi_-pet_on_shoulder-6a_qu5rzd.jpg"
file5 = URI.open(pic_user5)
user5.photo.attach(io: file5, filename: "Henry_Rubin.jpg", content_type: "image/png")
user5.save



user6 = User.new(
  email: "william.butler@gmail.com", first_name: "William", last_name: "Butler", user_name: "palace-brother", password: "123456", user_description: "")
pic_user6 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662116932/sitpet4bed/Petsitter%20User6%20William%20Butler/46210044-young-man-relaxing-on-park-bench-on-a-summers-day_imn7zp.jpg"
file6 = URI.open(pic_user6)
user6.photo.attach(io: file6, filename: "William_Butler.jpg", content_type: "image/png")
user6.save



user7 = User.new(
  email: "dirk.lucksmith@gmail.com", first_name: "Dirk", last_name: "Lucksmith", user_name: "cuddly-D", password: "123456",
  user_description: " ???Be it cat or dog or goose - if it???s cuddly-D you choose,
  you???re sure the pets are fine - while you are having a jolly good time.???
  ")
pic_user7 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662636352/sitpet4bed/Petsitter%20User7%20Dirk%20Lucksmith/IMG_20220627_174616_jlktr2.jpg"
file7 = URI.open(pic_user7)
user7.photo.attach(io: file7, filename: "Dirk_Lucksmith", content_type: "image/png")
user7.save


user8 = User.new(
  email: "ariana.antler@gmail.com", first_name: "Ariana", last_name: "Antler", user_name: "ari-ant", password: "123456", user_description: "All the people I like are those that are dead.")
pic_user8 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662039949/sitpet4bed/offer4%20user8%20Ms.Antler%20with%20anteater%20Anton/47055535804_daea4cdfdf_b_afmeet.jpg"
file8 = URI.open(pic_user8)
user8.photo.attach(io: file8, filename: "Ariana_Antler.jpg", content_type: "image/png")
user8.save


user9 = User.new(
  email: "giorgina.vasari@gmail.com", first_name: "Giorgina", last_name: "Vasari", user_name: "medici", password: "123456", user_description: "")
pic_user9 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662111029/sitpet4bed/offer2%20user9%20lively%20dalmatiner/2484px-Woman_redhead_natural_portrait_1_xkoifh.jpg"
file9 = URI.open(pic_user9)
user9.photo.attach(io: file9, filename: "Georgina_Vasari.jpg", content_type: "image/png")
user9.save

user10 = User.new(
  email: "sandra.sitwell@gmail.com", first_name: "Sandra", last_name: "Sitwell", user_name: "sitting-dame", password: "123456", user_description: "")
pic_user10 = "https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662114941/sitpet4bed/user10%20Sandra%20Sitwell%20British%20Shorthair/British_20Shorthair.1_p5myhu.jpg"
file10 = URI.open(pic_user10)
user10.photo.attach(io: file10, filename: "Sandra_Sitwell.jpg", content_type: "image/png")
user10.save


# puts "Creating offers"

offer1 = Offer.new(user: user10, title: "Mina needs a cat sitter",
description: "Our 10 year old cat Mina needs an
experienced petsitter for the whole month of October.
We live in a beautiful 2-room apartment in Kreuzberg.
It is very sunny with a balcony. Mina is a British
short hair and is used to stay indoors all
the time. She is super cuddly and needs a lot of attention.", pet:"British Shorthair cat", pet_name:"Mina", pet_description: "She's a sunshine, cuddle her as often as possible", address: "Katzbachstra??e 3, 10965 Berlin", neighborhood: "Kreuzberg", start_date:	"01.10.2022", end_date:	"31.10.2022")

file11 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662036109/sitpet4bed/user10%20Sandra%20Sitwell%20British%20Shorthair/2315705263_31d3aa21ba_c_g7n9od.jpg")
file12 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662035893/sitpet4bed/user10%20Sandra%20Sitwell%20British%20Shorthair/New_Orleans_June_07_-_Living_Room_tgplnu.jpg")
file13 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662035284/sitpet4bed/user10%20Sandra%20Sitwell%20British%20Shorthair/Female_British_Shorthair_cat_ayoi1i.jpg")
offer1.photos.attach(io: file11, filename: "Kreuzberg-flat.jpg", content_type: "image/jpg")
offer1.photos.attach(io: file12, filename: "Kreuzberg-flat 2.jpg", content_type: "image/jpg")
offer1.photos.attach(io: file13, filename: "Mina from Kreuzberg-flat.jpg", content_type: "image/jpg")
offer1.save!




offer2  = Offer.new(
  user: user9, title: "Dalmatiner Daisy needs a dog sitter", description: "Who wants to take care of our lovely Daisy.
  She is a strong willed but good hearted 13- year old Dalmatiner,
  that needs lots of running and playing, while we are away for a couple of days in the beginning of November.
  We live in a beautiful area with lots of parks and woods in the surrounding area.
  The house we are offering has 300 square meters and a garden with a lot of other animals that come over to visit and play with Daisy.
  Physical fitness and some conflict solving experience on your side might come handy", pet: "Dalmatiner", pet_name: "Daisy", pet_description: "Strong-willed but good-hearted, likes to stroll around", address: "Hundekehlestra??e 3, 14199 Berlin", neighborhood: "Schmargendorf",start_date: "01.11.2022", end_date: "05.11.2022")

file14 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662036096/sitpet4bed/offer2%20user9%20lively%20dalmatiner/Living_Room_vjveow.jpg")
file15 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662035885/sitpet4bed/offer2%20user9%20lively%20dalmatiner/9574629559_5b8d0a924f_nfjcdh.jpg")
file16 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662035076/sitpet4bed/offer2%20user9%20lively%20dalmatiner/Dalmatiner_3_fdsqjb.jpg")

offer2.photos.attach(io: file14, filename: "Dalmatiner-flat.jpg", content_type: "image/png")
offer2.photos.attach(io: file15, filename: "Dalmatiner-flat2.jpg", content_type: "image/png")
offer2.photos.attach(io: file16, filename: "Daisy from Dalmatiner-flat.jpg", content_type: "image/png")

offer2.save!


offer3  = Offer.new(
  user: user5, title: "Parrot Fridolin needs a petsitter", description: "	Are you experienced in taking care of intelligent birds?
  We are looking for a friendly and diligent bird sitter for our 7-year-old parrot Fridolin.
  He is a really attentive and funny creature that needs a lot of attention.
  You should have a great sense of humor and a lot of tolerance for insults.
  We offer you to live in a very beautiful and quiet ground floor apartment in Papageienviertel for 2 whole months.
  Please contact us, so we can get to know each other.", pet: "parrot", pet_name: "Fridolin", pet_description: "he loves a funny conversation & goofy noises.", address: "Eisvogelweg 3, 14169 Berlin", neighborhood: "Zehlendorf", start_date: "15.10.2022", end_date: "14.12.2022")
file17 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662038261/sitpet4bed/offer3%20user5%20Mr.%20Rubin%20with%20a%20parrot/Living_room_-pet_parrot_-cage-8a_tsyd5i.jpg")
file18 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662118435/sitpet4bed/offer3%20user5%20Mr.%20Rubin%20with%20a%20parrot/Eclectic-living-room-with-a-bird-cage-lighting-option_hebanf.jpg")
file19 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662035176/sitpet4bed/offer3%20user5%20Mr.%20Rubin%20with%20a%20parrot/27805754320_9060952d22_b_dln4fo.jpg")

offer3.photos.attach(io: file17, filename: "Parrot-flat.jpg", content_type: "image/png")
offer3.photos.attach(io: file18, filename: "Parrot-flat2.jpg", content_type: "image/png")
offer3.photos.attach(io: file19, filename: "Fridolin from Parrot-flat.jpg", content_type: "image/png")
offer3.save!





offer4  = Offer.new(
  user: user8, title: "Anteater needs a pet sitter", description: "I offer you a 10-days rent-free stay in the company of my Anton.
  He is a special kind of pet, so you should be prepared to adapt to his habits and needs.
  My comfy two storey home has all the luxury you could wish for and some big ant hills in the garden.
  Before you contact me, make sure you are not afraid of insects.", pet: "anteater", pet_name: "Anton", pet_description: "He has his ways but super-cute and always good fun ", address: "Ameisenweg 4, 13589 Berlin", neighborhood: "Spandau", start_date: Date.new(2022,12,20), end_date: Date.new(2022,12,30))

file20 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662035912/sitpet4bed/offer4%20user8%20Ms.Antler%20with%20anteater%20Anton/51404659219_0c55b8e9b6_b_juxehh.jpg")
file21 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662037899/sitpet4bed/offer4%20user8%20Ms.Antler%20with%20anteater%20Anton/4776001255_cbafd69cec_b_hmj51j.jpg")
file22 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1661960394/sitpet4bed/offer4%20user8%20Ms.Antler%20with%20anteater%20Anton/anteater-log-Pantanal-Brazil-wetlands_txncs6.jpg")

offer4.photos.attach(io: file20, filename: "Anteater-flat.jpg", content_type: "image/png")
offer4.photos.attach(io: file21, filename: "Anteater-anthill.jpg", content_type: "image/png")
offer4.photos.attach(io: file22, filename: "Anton from Anteater-flat.jpg", content_type: "image/png")
offer4.save!



offer5  = Offer.new(
user: user4, title: "Spider-sitting over Halloween", description: "Here is something for petsitters with a faible for spiders. We have to go on a short holiday and Tito has to be fed and taken care for. Tarantula Tito is used to roam freely in our comfy 3-room apartment on ground floor. He has several hideouts that you need to respect. And make sure you don???t feed him during daytime. Please no contacts by arachnophobiacs.", pet: "Tarantula", pet_name: "Tito", pet_description: "Hairy Tito is used to contact with humans. Don???t worry..", address: "Tempelhofer Damm 56, 12101 Berlin", neighborhood: "Tempelhof", start_date: Date.new(2022,10,30), end_date: Date.new(2022,11,06))

file23 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662639358/sitpet4bed/Offer5%20User4%20steven%20strange%20with%20spider%20tito/50886614576_8b5680a26e_b_ngykq7.jpg")
file24 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662639361/sitpet4bed/Offer5%20User4%20steven%20strange%20with%20spider%20tito/Bonner_Stammtisch_2C_Petersberg_-_Staatsg_C3_A4ste_Suite__283_29_es3ncb.jpg")
file25 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662638933/sitpet4bed/Offer5%20User4%20steven%20strange%20with%20spider%20tito/8708946738_7dda5fcd22_b_kyeblx.jpg")

offer5.photos.attach(io: file23, filename: "Spider-flat.jpg", content_type: "image/png")
offer5.photos.attach(io: file24, filename: "Spider-flat2.jpg", content_type: "image/png")
offer5.photos.attach(io: file25, filename: "Tito from Spider-flat.jpg", content_type: "image/png")
offer5.save!


offer6  = Offer.new(
user: user6, title: "Boa Bernie needs a body-builder as petsitter", description: "I am offering a month of rent-free stay in my spacious 4-room apartment in beautiful Kreuzberg. Since I cannot leave my snake unattended and the last petsitter mysteriously disappeared, I have to make sure that you are experienced with big snakes. Physical fitness is required. Ideally you have a body-building- or a wrestling-background.", pet: "Boa Constrictor", pet_name: "Bernie", pet_description: "Bernie is very peaceful and flexible. Once he is attracted to you, he won???t let you go.", address: "Wrangelstra??e 2, 10997 Berlin", neighborhood: "Kreuzberg", start_date: Date.new(2022,9,28), end_date: Date.new(2022,10,27))

file26 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662639674/sitpet4bed/offer6%20user6%20William%20Buttler%20-%20Boa%20Constrictor/Room1_myzoxy.jpg")
file27 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662639673/sitpet4bed/offer6%20user6%20William%20Buttler%20-%20Boa%20Constrictor/Room2_dqzgs9.jpg")
file28 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662639673/sitpet4bed/offer6%20user6%20William%20Buttler%20-%20Boa%20Constrictor/Boa_qft8ry.jpg")

offer6.photos.attach(io: file26, filename: "Boa-flat.jpg", content_type: "image/png")
offer6.photos.attach(io: file27, filename: "Boa-flat2.jpg", content_type: "image/png")
offer6.photos.attach(io: file28, filename: "Bernie from Boa-flat.jpg", content_type: "image/png")
offer6.save!




offer7  = Offer.new(
user: user2, title: "Goofy needs a careful petsitter", description: "Have fun with our Guinea Pig Goofy.", pet: "Guinea Pig", pet_name: "Goofy", pet_description: "Goofy is sensitive type. Tread carefully", address: "Kopischstra??e 2, 10965 Berlin", neighborhood: "Kreuzberg", start_date: Date.new(2022,12,01), end_date: Date.new(2022,12,05))

file29 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662640351/sitpet4bed/offer7%20user2%20Chris%20Cuddler%20-%20Guinea%20Pig%20Goofy/Bedroom_qop5en.jpg")
file30 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662640350/sitpet4bed/offer7%20user2%20Chris%20Cuddler%20-%20Guinea%20Pig%20Goofy/Kitchen_ju3je9.jpg")
file31 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662640350/sitpet4bed/offer7%20user2%20Chris%20Cuddler%20-%20Guinea%20Pig%20Goofy/GuineaPig_edpmdl.jpg")

offer7.photos.attach(io: file29, filename: "Guinea-flat.jpg", content_type: "image/png")
offer7.photos.attach(io: file30, filename: "Guinea-flat2.jpg", content_type: "image/png")
offer7.photos.attach(io: file31, filename: "Goofy from Guinea-flat.jpg", content_type: "image/png")
offer7.save!


offer8  = Offer.new(
user: user1, title: "Tony needs a relaxed petsitter", description: "Have fun with Tony , the chilled-out turtle.", pet: "Turtle", pet_name: "Tony", pet_description: "Tony ... we all can learn from him", address: "B??tzowstra??e 57, 10407 Berlin", neighborhood: "Pankow", start_date: Date.new(2022,12,020), end_date: Date.new(2022,12,30))

file32 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662640592/sitpet4bed/offer8%20user1%20Peter%20Wolf%20-%20Turtle%20Tony/Bedroom_o4icck.jpg")
file33 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662640592/sitpet4bed/offer8%20user1%20Peter%20Wolf%20-%20Turtle%20Tony/LivingRoom_x11ylq.jpg")
file34 = URI.open("https://res.cloudinary.com/dgn2w2wvl/image/upload/v1662640592/sitpet4bed/offer8%20user1%20Peter%20Wolf%20-%20Turtle%20Tony/TurtleTony_zbjm3p.jpg")

offer8.photos.attach(io: file32, filename: "Guinea-flat.jpg", content_type: "image/png")
offer8.photos.attach(io: file33, filename: "Guinea-flat2.jpg", content_type: "image/png")
offer8.photos.attach(io: file34, filename: "Goofy from Guinea-flat.jpg", content_type: "image/png")
offer8.save!



puts "Offers Created"

booking = Booking.new()
booking.user = user7
booking.offer = offer1
booking.save

puts "Bookings Created"

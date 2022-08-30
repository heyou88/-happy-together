# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
<<<<<<< HEAD
users = User.create(
{email: , first_name: , last_name: , user_name: , password:  }


)


offers = Offer.create(
{  }

)
=======
puts "Creating offers"

Offer.create(user: User.last, title: "Mina needs a cat sitter",
description: "Our 10 year old cat Mina needs an
experienced petsitter for the whole month of October.
We live in a beautiful 2-room apartment in Kreuzberg.
It is very sunny with a balcony. Mina is a British
short hair and is used to stay indoors all
the time. She is super cuddly and needs a lot of attention.", pet:"British Shorthair cat")
puts "Offers Created"
>>>>>>> e20fb90c082d83598cd647cab8b3d5a52bd8a581

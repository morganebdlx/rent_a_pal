# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Creating pals'
Booking.destroy_all
Pal.destroy_all
User.destroy_all

user = User.new(
  email: 'yadelajoie@rentapal.fr',
  password: 'azerty',
  username: 'YadelaJoie',
  age: 25,
  city: 'Ajaccio',
  hobby: 'Boxe'

)

file = File.open("app/assets/images/avatar4.png")
user.photo.attach(io: file, filename: "avatar4.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 20,
  user: user,
  city: 'Ajaccio'
)

user = User.create!(
  email: 'lejcles@rentapal.fr',
  password: 'azerty',
  username: 'LeJcLeS',
  age: 34,
  city: 'Nantes',
  hobby: 'Barathon'
)

file = File.open("app/assets/images/avatar6.png")
user.photo.attach(io: file, filename: "avatar6.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 20,
  user: user,
  city: 'Nantes'
)

user = User.create!(
  email: 'laitueparis@rentapal.fr',
  password: 'azerty',
  username: 'LaitueParis',
  age: 35,
  city: 'Lille',
  hobby: 'Shopping'
)

file = File.open("app/assets/images/avatar3.png")
user.photo.attach(io: file, filename: "avatar3.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 40,
  user: user,
  city: 'Lille'
)

user = User.create!(
  email: 'végévors@rentapal.fr',
  password: 'azerty',
  username: 'VégéVor',
  age: 22,
  city: 'Toulouse',
  hobby: 'Yoga'
)

file = File.open("app/assets/images/avatar6.png")
user.photo.attach(io: file, filename: "avatar6.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 50,
  user: user,
  city: 'Toulouse'
)

user = User.create!(
  email: 'momo-la-folle87@rentapal.fr',
  password: 'azerty',
  username: 'momo-la-folle87',
  age: 33,
  city: 'Strasbourg',
  hobby: 'Shopping'
)

file = File.open("app/assets/images/avatar6.png")
user.photo.attach(io: file, filename: "avatar6.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 50,
  user: user,
  city: 'Strasbourg'
)

user = User.create!(
  email: 'jibus33@rentapal.fr',
  password: 'azerty',
  username: 'Jibus33',
  age: 35,
  city: 'Bordeaux',
  hobby: 'Rugby'
)

file = File.open("app/assets/images/avatar2.png")
user.photo.attach(io: file, filename: "avatar2.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 30,
  user: user,
  city: 'Bordeaux'
)

user = User.create!(
  email: 'titidu33@rentapal.fr',
  password: 'azerty',
  username: 'Titidu33',
  age: 17,
  city: 'Bastia',
  hobby: 'Rugby'
)

file = File.open("app/assets/images/avatar3.png")
user.photo.attach(io: file, filename: "avatar3.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 30,
  user: user,
  city: 'Bastia'
)

user = User.create!(
  email: 'mamereenslip@rentapal.fr',
  password: 'azerty',
  username: 'MaMereEnSlip',
  age: 27,
  city: 'Angers',
  hobby: 'Barathon'
)

file = File.open("app/assets/images/avatar4.png")
user.photo.attach(io: file, filename: "avatar4.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 50,
  user: user,
  city: 'Angers'
)

user = User.create!(
  email: 'wazaaa974@rentapal.fr',
  password: 'azerty',
  username: 'Wazaaa974',
  age: 31,
  city: 'Nancy',
  hobby: 'Escalade'
)

file = File.open("app/assets/images/avatar2.png")
user.photo.attach(io: file, filename: "avatar2.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 20,
  user: user,
  city: 'Nancy'
)

user = User.create!(
  email: 'modjo33@rentapal.fr',
  password: 'azerty',
  username: 'Modjo33',
  age: 18,
  city: 'Rouen',
  hobby: 'Football'
)

file = File.open("app/assets/images/avatar3.png")
user.photo.attach(io: file, filename: "avatar3.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 40,
  user: user,
  city: 'Rouen'
)

user = User.create!(
  email: 'annecece@rentapal.fr',
  password: 'azerty',
  username: 'AnneCécé',
  age: 27,
  city: 'Amiens',
  hobby: 'Barathon'
)

file = File.open("app/assets/images/avatar2.png")
user.photo.attach(io: file, filename: "avatar2.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 50,
  user: user,
  city: 'Amiens'
)

user = User.create!(
  email: 'roroonrails@rentapal.fr',
  password: 'azerty',
  username: 'RoroOnRails',
  age: 20,
  city: 'Marseille',
  hobby: 'Boxe'
)

file = File.open("app/assets/images/avatar4.png")
user.photo.attach(io: file, filename: "avatar4.png", content_type: "image/png")
user.save!

Pal.create!(
  price: 30,
  user: user,
  city: 'Marseille'
)

puts 'Finished!'
p "Created #{Pal.count} pals"

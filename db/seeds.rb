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
Pal.destroy_all
User.destroy_all

user = User.create!(
  email: 'yadelajoie@rentapal.fr',
  password: 'azerty',
  username: 'YadelaJoie',
  age: 25,
  city: 'Bordeaux',
  hobby: 'Box'
)

Pal.create!(
  price: 20,
  user: user,
)

user = User.create!(
  email: 'lejcles@rentapal.fr',
  password: 'azerty',
  username: 'LeJcLeS',
  age: 34,
  city: 'Bordeaux',
  hobby: 'Barathon'
)

Pal.create!(
  price: 20,
  user: user,
)

user = User.create!(
  email: 'laitueparis@rentapal.fr',
  password: 'azerty',
  username: 'LaitueParis',
  age: 35,
  city: 'Bordeaux',
  hobby: 'Shopping'
)

Pal.create!(
  price: 40,
  user: user,
)

user = User.create!(
  email: 'végévors@rentapal.fr',
  password: 'azerty',
  username: 'VégéVor',
  age: 22,
  city: 'Bordeaux',
  hobby: 'Yoga'
)

Pal.create!(
  price: 50,
  user: user
)

user = User.create!(
  email: 'momo-la-folle87@rentapal.fr',
  password: 'azerty',
  username: 'momo-la-folle87',
  age: 33,
  city: 'Bordeaux',
  hobby: 'Shopping'
)

Pal.create!(
  price: 50,
  user: user
)

user = User.create!(
  email: 'jibus33@rentapal.fr',
  password: 'azerty',
  username: 'JiBus33',
  age: 56,
  city: 'Bordeaux',
  hobby: 'Rugby'
)

Pal.create!(
  price: 30,
  user: user
)

user = User.create!(
  email: 'titidu33@rentapal.fr',
  password: 'azerty',
  username: 'Titidu33',
  age: 17,
  city: 'Bordeaux',
  hobby: 'Rugby'
)

Pal.create!(
  price: 30,
  user: user
)

user = User.create!(
  email: 'mamereenslip@rentapal.fr',
  password: 'azerty',
  username: 'MaMereEnSlip',
  age: 27,
  city: 'Bordeaux',
  hobby: 'Barathon'
)

Pal.create!(
  price: 50,
  user: user
)

user = User.create!(
  email: 'wazaaa974@rentapal.fr',
  password: 'azerty',
  username: 'Wazaaa974',
  age: 31,
  city: 'Bordeaux',
  hobby: 'Escalade'
)

Pal.create!(
  price: 20,
  user: user
)

user = User.create!(
  email: 'modjo33@rentapal.fr',
  password: 'azerty',
  username: 'Modjo33',
  age: 18,
  city: 'Bordeaux',
  hobby: 'Football'
)

Pal.create!(
  price: 40,
  user: user
)

user = User.create!(
  email: 'annecece@rentapal.fr',
  password: 'azerty',
  username: 'AnneCécé',
  age: 27,
  city: 'Bordeaux',
  hobby: 'Barathon'
)

Pal.create!(
  price: 50,
  user: user
)

user = User.create!(
  email: 'roroonrails@rentapal.fr',
  password: 'azerty',
  username: 'RoroOnRails',
  age: 20,
  city: 'Bordeaux',
  hobby: 'Box'
)

Pal.create!(
  price: 30,
  user: user
)

user = User.create!(
  email: 'kevin1@rentapal.fr',
  password: 'azerty',
  username: 'Kévin1',
  age: '36',
  city: 'Bordeaux',
  hobby: 'Barathon'
)

Pal.create!(
  price: 30,
  user: user
)

user = User.create!(
  email: 'kevin2@rentapal.fr',
  password: 'azerty',
  username: 'Kévin2',
  age: '22',
  city: 'Bordeaux',
  hobby: 'Yoga'
)

Pal.create!(
  price: 60,
  user: user
)

user = User.create!(
  email: 'kevin3@rentapal.fr',
  password: 'azerty',
  username: 'Kévin3',
  age: '40',
  city: 'Bordeaux',
  hobby: 'DataBase'
)

Pal.create!(
  price: 60,
  user: user
)
puts 'Finished!'
p "Created #{Pal.count} pals"

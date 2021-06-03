# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Character.destroy_all
Race.destroy_all
Location.destroy_all
KnightsRadiantOrder.destroy_all

alethi = Race.create(name: 'Alethi')
alethkar = Location.create(name: 'Alethkar', location_type: 'country')
windrunner = KnightsRadiantOrder.create(title: 'Windrunner', bond: 'Honorspren')

kaladin = Character.create(name: 'Kaladin', gender: 'Male', alive: true, birth_year: 1153, race_id: alethi.id, location_id: alethkar.id, knights_radiant_order_id: windrunner.id)
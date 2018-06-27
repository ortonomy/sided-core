# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  first_name: 'Test',
  last_name: 'User',
  username: 'tester1',
  email: 'tester1@sided.online',
  password: '123',
  password_confirmation: '123'
)

Side.create!([
  {
    name: 'mafia'
  },
  {
    name: 'village'
  },
  {
    name: 'neutral'
  }
])

Role.create!([
  {
    name: 'peasant',
    side: Side.find_by(name: 'village')
  },
  {
    name: 'cop',
    side: Side.find_by(name: 'village')
  },
  {
    name: 'doctor',
    side: Side.find_by(name: 'village')
  },
  {
    name: 'mafioso',
    side: Side.find_by(name: 'mafia')
  }
])

Phase.create!([
  {
    name: 'lynch',
    time: 'day',
    sequence: 1
  },
  {
    name: 'murder',
    time: 'night',
    sequence: 1
  },
  {
    name: 'save',
    time: 'night',
    sequence: 2
  }
])

Power.create([
  {
    name: 'murder',
    effect: 'kill'  
  },
  {
    name: 'protect',
    effect: 'save'  
  },
  {
    name: 'lynch',
    effect: 'vote'  
  }
])





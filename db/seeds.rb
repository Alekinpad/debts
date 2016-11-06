# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# Create users
User.destroy_all

users = [
  {
    name: 'usuario1',
    email: 'usuario1@example.com'
  },
  {
    name: 'usuario2',
    email: 'usuario2@example.com'
  },
  {
    name: 'usuario3',
    email: 'usuario3@example.com'
  },
  {
    name: 'usuario4',
    email: 'usuario4@example.com'
  }
]

User.create(users)

# Create categories
Category.destroy_all

categories = [
  {
    name: 'Retail'
  },
  {
    name: 'Familia'
  },
  {
    name: 'Negocios'
  }
]

Category.create(categories)

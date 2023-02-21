# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p = Person.create(first_name: "Malcolm", last_name: "Wheezy",email: "test@test.com", phone: 214242343, title: "Database Engineer", github: "github.com", linkedin: "linkedin", location: "NY")
p.save
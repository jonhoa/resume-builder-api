# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
p = Person.create(
  first_name: 'Malcolm',
  last_name: 'Wheezy',
  email: 'test@test.com',
  phone: 214_242_343,
  title: 'Database Engineer',
  github: 'github.com',
  linkedin: 'linkedin',
  location: 'NY'
)
p.save

e = Education.create(
  start: 'May 2013',
  end: 'June 2017',
  degree: 'BSC Computer Science',
  university: 'Skylar University',
  details: 'Computer science course'
)
e.save

x = Experience.create(
  start: 'January 2021',
  end: 'September 2023',
  job: 'Forklift Driver',
  company: 'Buso',
  details: 'Worked in a warehouse and drove a forklift through the building'
)
x.save

p = Project.create(
  "name": 'Vasco Simulator',
  "description": 'Experience the world in Vasco eyes, written in C++, and React'
)
p.save

s = Skill.create(
  name: 'C++'
)
s.save

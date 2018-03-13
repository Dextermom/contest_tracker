# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

students = Student.create!([{
    name: "Jane Doe",
    grad_year:"2018"
  },
  {
    name: "John Doe",
    grad_year: "2020"
  }])

selections = Selection.create!([{
    title: "Come Again, Sweet Love!",
    pml: "936",
    composer: "Dowland"
  },
  {
    title: "Sing Me to Heaven",
    pml: "245",
    composer: "Gwathrop"
    }])

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Author.create(name: "Charles Dickens", bith_date: "1920", country: "England", bith_place: "london")
Author.create(name: "Goerge Orwill", bith_date: "1984", country: "England", bith_place: "leeds")
Author.create(name: "haoriky moraka", bith_date: "1890", country: "japan", bith_place: "tokyo")


Book.create(author_id: 1, title: "Oliver Twist", genre: "Novel", publish_date: "1999")
Book.create(author_id: 2, title: "1984", genre: "Novel", publish_date: "1948")
Book.create(author_id: 3, title: "Kafka on the beach", genre: "Fantcy", publish_date: "1890")
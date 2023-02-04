# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Compra.create(name: "batatinha", date: Time.now, price: 5)

# puts Compra.last

250.times do
    Compra.create(
        name: Faker::Food.fruits,
        price: Faker::Number.decimal(l_digits: 2),
        date: Faker::Date.between(from: '2014-09-23', to: Time.now)
    )
end
Compra.all.each do |compra|
    puts "nome da compra: #{compra.name}"
    puts "preço da compra: #{compra.price}"
    puts "data da compra: #{compra.date}"
end
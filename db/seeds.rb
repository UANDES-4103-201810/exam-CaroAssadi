# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

pizzas = Pizza.create([{name: 'Pizza1'}, {name: 'Pizza2'}])
ingredients = Ingredient.create([{name: 'Mozzarella'}, {name: 'Pepperoni'},{name:'Tomato'},{name:'Olives'}])
#ingpizzas = Ingpizza.create([{ingredient:1,pizza:1}, {ingredient:1, pizza:2},{ingredient:2, pizza:2},{ingredient:3, pizza:1}])

puts 'Cleaning database...'

# Ingredient.destroy_all
# Quantiy.destroy_all
# Steps.destroy_all
# Recipe.destroy_all
User.destroy_all

puts 'Creating users...'
  user_admin = User.create(username:"elisztomania",email:"admin@cookiteasy.xyz", password:"getschompignon")
  ella = User.create(username:"Ella",email:"e@ll.a", password:"ellaellaaa")

puts 'Creating recipies...'
  bretzel = Recipe.create!(title:'Palmiers à la cannelle', category:'Dessert', cooking_time: 20, prep_time: 10, note:'Une recette hyper simple et rapide à faire pour le gouter!', user: user_admin)

puts 'Finished!'

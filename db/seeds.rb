puts 'Cleaning database...'

Quantity.destroy_all
Ingredient.destroy_all

Steps.destroy_all
Recipe.destroy_all
User.destroy_all

puts 'Creating users...'
  user_admin = User.create(username:"elisztomania",email:"admin@cookiteasy.xyz", password:"getschompignon")
  ella = User.create(username:"Ella",email:"e@ll.a", password:"ellaellaaa")

puts 'Creating recipies...'
  palmiers = Recipe.create(title:'Palmiers à la cannelle', category:'Dessert', cooking_time: 20, prep_time: 10, note:'Une recette hyper simple et rapide à faire pour le gouter!', user: user_admin)
    source = File.open("app/assets/images/palmiers.jpg")
    palmiers.photo.attach(io: source, filename: 'palmiers.jpg', content_type: 'image/jpg')
    palmiers.save!
    ing1 = Ingredient.create(name: "pâte feuilletée")
    q1 = Quantity.create(q: 1, mesure:" ", recipe: palmiers, ingredient:ing1)

    ing2 = Ingredient.create(name: "sucre roux")
    q2 = Quantity.create(q: 30, mesure: "g", recipe: palmiers, ingredient: ing2)

    ing3 = Ingredient.create(name: "cannelle")
    q3 = Quantity.create(q: 10, mesure: "g", recipe: palmiers, ingredient: ing3)

puts 'Finished!'

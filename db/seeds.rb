puts 'Cleaning database...'

Quantity.destroy_all
Ingredient.destroy_all

Step.destroy_all
Recipe.destroy_all
User.destroy_all

puts 'Creating users...'
  user_admin = User.create(username:"elisztomania",email:"admin@cookiteasy.xyz", password:"getschompignon")
  ella = User.create(username:"Ella",email:"e@ll.a", password:"ellaellaaa")

puts 'Creating recipies...'
puts "Creating Palmiers à la cannelle"

  palmiers = Recipe.create(title:'Palmiers à la cannelle', category:'Dessert', cooking_time: 15, prep_time: 5, note:'Une recette hyper simple et rapide à faire pour le gouter!', user: user_admin)
    source = File.open("app/assets/images/palmiers.jpg")
    palmiers.photo.attach(io: source, filename: 'palmiers.jpg', content_type: 'image/jpg')
    palmiers.save!

    ing1 = Ingredient.create(name: "pâte feuilletée")
    q1 = Quantity.create(q: 1, mesure:"(rien)", recipe: palmiers, ingredient:ing1)

    ing2 = Ingredient.create(name: "sucre roux")
    q2 = Quantity.create(q: 30, mesure: "g", recipe: palmiers, ingredient: ing2)

    ing3 = Ingredient.create(name: "cannelle")
    q3 = Quantity.create(q: 10, mesure: "g", recipe: palmiers, ingredient: ing3)

    step1 = Step.create(description: "Étalez la pâte feuilletée et repartissez le sucre puis la cannelle.", recipe: palmiers)
    step2 = Step.create(description: "Roulez les bords l'un vers l'autre, pour former les deux côtés du palmier. Pressez légèrement pour coller les surfaces de pâte les unes aux autres.", recipe: palmiers)
    step3 = Step.create(description: "Réservez 15/30 minutes le rouleau de pâte au frais ou au congélateur pour durcir la pâte et faciliter la découpe.", recipe: palmiers)
    step4 = Step.create(description: "Découpez des tranches de 5mm et répartissez les palmiers sur une plaque.", recipe: palmiers)
    step5 = Step.create(description: "Faites cuire 15 minutes environ dans le four préalablement préchauffé à 200°C, ils doivent être bien dorés.", recipe: palmiers)

puts 'Finished!'

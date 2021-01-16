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
  puts "Creating Palmiers à la cannelle..."

  palmiers = Recipe.create(title:'Palmiers à la cannelle', category:'Dessert', cooking_time: 15, prep_time: 5, note:'Une recette hyper simple et rapide à faire pour le gouter!', user: user_admin)
    source = File.open("app/assets/images/palmiers.jpg")
    palmiers.photo.attach(io: source, filename: 'palmiers.jpg', content_type: 'image/jpg')
    palmiers.save!

    ing1_p = Ingredient.create(name: "pâte feuilletée")
    Quantity.create(q: 1, mesure:"(rien)", recipe: palmiers, ingredient:ing1_p)

    ing2_p = Ingredient.create(name: "sucre roux")
    Quantity.create(q: 30, mesure: "g", recipe: palmiers, ingredient: ing2_p)

    ing3_p = Ingredient.create(name: "cannelle")
    Quantity.create(q: 10, mesure: "g", recipe: palmiers, ingredient: ing3_p)

    Step.create(description: "Étalez la pâte feuilletée et repartissez le sucre puis la cannelle.", recipe: palmiers)
    Step.create(description: "Roulez les bords l'un vers l'autre, pour former les deux côtés du palmier. Pressez légèrement pour coller les surfaces de pâte les unes aux autres.", recipe: palmiers)
    Step.create(description: "Réservez 15/30 minutes le rouleau de pâte au frais ou au congélateur pour durcir la pâte et faciliter la découpe.", recipe: palmiers)
    Step.create(description: "Découpez des tranches de 5mm et répartissez les palmiers sur une plaque.", recipe: palmiers)
    Step.create(description: "Faites cuire 15 minutes environ dans un four préalablement préchauffé à 200°C, ils doivent être bien dorés.", recipe: palmiers)

  puts "Creating Tarte aux pommes..."
  tarte_p = Recipe.create(title:'Tarte aux pommes', category:'Dessert', cooking_time: 45, prep_time: 20, note:'Une tarte simple mais déliciseuse!', user: user_admin)
    source = File.open("app/assets/images/tarte-pomme.jpg")
    tarte_p.photo.attach(io: source, filename: 'tarte-pomme.jpg', content_type: 'image/jpg')
    tarte_p.save!

    ing1_tp = Ingredient.create(name: "pâte feuilletée")
    Quantity.create(q: 1, mesure:"(rien)", recipe: tarte_p, ingredient:ing1_tp)

    ing2_tp = Ingredient.create(name: "compotes de pommes")
    Quantity.create(q: 2, mesure:"(rien)", recipe: tarte_p, ingredient:ing2_tp)

    ing3_tp = Ingredient.create(name: "pommes")
    Quantity.create(q: 4, mesure:"(rien)", recipe: tarte_p, ingredient:ing3_tp)

    ing4_tp = Ingredient.create(name: "cannelle")
    Quantity.create(q: 1, mesure:"C à café", recipe: tarte_p, ingredient:ing4_tp)

    ing4_tp = Ingredient.create(name: "sucre roux")
    Quantity.create(q: 2, mesure:"C à soupe", recipe: tarte_p, ingredient:ing4_tp)

    Step.create(description: "Coupez les pommes en fines tranches.", recipe: tarte_p)
    Step.create(description: "Disposez la pâte dans un moule à trate. Piquez là avec une fourchette.", recipe: tarte_p)
    Step.create(description: "Étalez la compote. Soupoudrez de cannelle, disposez les tranches de pommes en rosace puis rajoutez le sucre.", recipe: tarte_p)
    Step.create(description: "Faites cuire 45 minutes environ dans un four préalablement préchauffé à 200°C.", recipe: tarte_p)

puts 'Finished!'

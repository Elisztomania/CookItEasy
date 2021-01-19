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

    ing1_tp = Ingredient.create(name: "pâte brisée")
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
    Step.create(description: "Disposez la pâte dans un moule à tarte. Piquez là avec une fourchette.", recipe: tarte_p)
    Step.create(description: "Étalez la compote. Soupoudrez de cannelle, disposez les tranches de pommes en rosace puis rajoutez le sucre.", recipe: tarte_p)
    Step.create(description: "Faites cuire 45 minutes environ dans un four préalablement préchauffé à 200°C.", recipe: tarte_p)

  puts "Creating Tarte fromage frais et courgettes..."
    tarte_c = Recipe.create(title:'Tarte courgettes et StMoret', category:'EZPZ', cooking_time: 45, prep_time: 20, note: "Une tarte légère et rapide à faire! Idéale pour l'été.", user: user_admin)
    source = File.open("app/assets/images/tarte-courgettes.jpg")
    tarte_c.photo.attach(io: source, filename: 'tarte-courgettes.jpg', content_type: 'image/jpg')
    tarte_c.save!

    ing1_tc = Ingredient.create(name: "pâte brisée")
    Quantity.create(q: 1, mesure:"(rien)", recipe: tarte_c, ingredient:ing1_tc)

    ing3_tc = Ingredient.create(name: "courgettes")
    Quantity.create(q: 3, mesure:"(rien)", recipe: tarte_c, ingredient:ing3_tc)

    ing2_tc = Ingredient.create(name: "fromage frais type St-Moret")
    Quantity.create(q: 5, mesure:"C à soupe", recipe: tarte_c, ingredient:ing2_tc)

    ing4_tc = Ingredient.create(name: "moutarde")
    Quantity.create(q: 2, mesure:"C à soupe", recipe: tarte_c, ingredient:ing4_tc)

    Step.create(description: "Coupez les courgettes en fines tranches.", recipe: tarte_c)
    Step.create(description: "Disposez la pâte dans un moule à tarte. Piquez là avec une fourchette.", recipe: tarte_c)
    Step.create(description: "Étalez la mourtde puis le fromage frais. Disposez les rondelles de courgette. Salez et poivrez.", recipe: tarte_c)
    Step.create(description: "Faites cuire 45 minutes environ dans un four préalablement préchauffé à 200°C.", recipe: tarte_c)

    puts "Creating Chili Sin Carne..."
      chili = Recipe.create(title:'Chili sin carne', category:'EZPZ', cooking_time: 20, prep_time: 20, note: "Un chili végératien simple, ultra rapide, pas chers et réconfortant!", user: user_admin)
      source = File.open("app/assets/images/chili.jpg")
      chili.photo.attach(io: source, filename: 'chili.jpg', content_type: 'image/jpg')
      chili.save!

      ing1_chili = Ingredient.create(name: "pois chiche")
      Quantity.create(q: 1, mesure:"Conserve(s)", recipe: chili, ingredient:ing1_chili)

      ing2_chili = Ingredient.create(name: "haricots rouges façon chili de Bonduelle")
      Quantity.create(q: 1, mesure:"Conserve(s)", recipe: chili, ingredient:ing2_chili)

      ing3_chili = Ingredient.create(name: "sauce tomate")
      Quantity.create(q: 1, mesure:"Brique(s)", recipe: chili, ingredient:ing3_chili)

      ing4_chili = Ingredient.create(name: "mélange d'épices méxicaines")
      Quantity.create(q: 1, mesure:"(rien)", recipe: chili, ingredient:ing4_chili)

      ing5_chili = Ingredient.create(name: "riz")
      Quantity.create(q: 150, mesure:"g", recipe: chili, ingredient:ing5_chili)

      ing6_chili = Ingredient.create(name: "fromage rapé (pour encore plus de plaisir)")
      Quantity.create(q: 2, mesure:"Pincée(s)", recipe: chili, ingredient:ing6_chili)


      Step.create(description: "Faites cuire le riz.", recipe: chili)
      Step.create(description: "Réutilisez la casserole du riz pour faire la sauce : faites revenir les haricots puis les pois chiche avec les épices.", recipe: chili)
      Step.create(description: "Rajoutez la sauce tomate puis assaisonnez à votre convenance (sel, poivre, encore des épices...)", recipe: chili)
      Step.create(description: "Mélangez le riz avec votre super sauce! Ajoutez le fromage et dégustez!", recipe: chili)

    puts "Creating Quiche poireaux féta..."
      quiche = Recipe.create(title:'Quiche poireaux feta', category:'Classique', cooking_time: 45, prep_time: 20, note: "Une quiche aux poireaux tout ce qu'il y a de plus CLASSIQUE mais la féta fait le différence", user: user_admin)
      source = File.open("app/assets/images/quiche.jpg")
      quiche.photo.attach(io: source, filename: 'quiche.jpg', content_type: 'image/jpg')
      quiche.save!

      ing1_quiche = Ingredient.create(name: "pâte brisée")
      Quantity.create(q: 1, mesure:"(rien)", recipe: quiche, ingredient:ing1_quiche)

      ing2_quiche = Ingredient.create(name: "œufs")
      Quantity.create(q: 3, mesure:"(rien)", recipe: quiche, ingredient:ing2_quiche)

      ing3_quiche = Ingredient.create(name: "crème liquide soja")
      Quantity.create(q: 1, mesure:"Brique(s)", recipe: quiche, ingredient:ing3_quiche)

      ing4_quiche = Ingredient.create(name: "feta")
      Quantity.create(q: 100, mesure:"g", recipe: quiche, ingredient:ing4_quiche)

      ing5_quiche = Ingredient.create(name: "poireaux")
      Quantity.create(q: 2, mesure:"(rien)", recipe: quiche, ingredient:ing5_quiche)

      ing6_quiche = Ingredient.create(name: "échalotte (optionnel)")
      Quantity.create(q: 1, mesure:"(rien)", recipe: quiche, ingredient:ing6_quiche)

      Step.create(description: "Faites préchauffer le four à 200°C.", recipe: quiche)
      Step.create(description: "Faites revenir l'échalotte avec les poireaux, préalablement coupés et lavés of course.", recipe: quiche)
      Step.create(description: "Pendant ce temps... mélangez dans un cul de poule (ou autre type de saladier) les œufs et la crème. Assaisonnez à votre guise, sel, poivre et un peu de curry pour ma part ! Coupez ensuite la feta.", recipe: quiche)
      Step.create(description: "Disposez dans un plat à tarte la pâte brisée et piquez là. Versez-y les poireaux cuits, parsemez les dés de feta préalablement découpés puis le mélange œufs/crème.", recipe: quiche)
      Step.create(description: "Enfournez pour 45 minutes de cuisson (voir plus selon votre four).", recipe: quiche)

    puts "Creating Gratin butternut..."
    puts "Creating Bric chèvre épinards..."
    puts "Creating Gratin de gnocchis..."

puts 'Finished!'




























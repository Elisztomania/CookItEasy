puts 'Cleaning database...'

# Ingredient.destroy_all
# Quantiy.destroy_all
# Steps.destroy_all
# Recipe.destroy_all
User.destroy_all

puts 'Creating users...'
  user_admin = User.create(username:"elisztomania",email:"admin@cookiteasy.xyz", password:"getschompignon")
    user_admin.save!
  ella = User.create(username:"Ella",email:"e@ll.a", password:"ellaellaaa")

puts 'Finished!'

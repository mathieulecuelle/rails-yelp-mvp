# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# 1. Clean the database 🗑️
puts "Cleaning database..."
Restaurant.destroy_all
Review.destroy_all

# 2. Create the instances 🏗️
puts "Creating restaurants..."

# Création des restaurants
restaurant1 = Restaurant.create!(name: "L'Adresse", address: "40 Rue du Pré Gauchet, 44000 Nantes", phone_number: "+33 2 28 29 61 73", category: "french")
restaurant2 = Restaurant.create!(name: "Les Gamines resto family friendly", address: "5 Rue Lamoricière, 44100 Nantes", phone_number: "+33 9 83 93 98 90", category: "french")
restaurant3 = Restaurant.create!(name: "La Cigale", address: "4 Pl. Graslin, 44000 Nantes", phone_number: "+33 2 51 84 94 94", category: "french")
restaurant4 = Restaurant.create!(name: "L'Agave", address: "11 Rue Léon Blum, 44000 Nantes", phone_number: "+33 2 40 47 54 51", category: "french")
restaurant5 = Restaurant.create!(name: "Chez ta Mère", address: "34 Bd de la Liberté, 44100 Nantes", phone_number: "+33 2 49 09 41 81", category: "french")

# Création des avis pour L'Adresse
Review.create!(rating: 5, content: "Ambiance cozy et cuisine raffinée. Le foie gras était divin !", restaurant: restaurant1)
Review.create!(rating: 4, content: "Service un peu lent mais plats savoureux. À essayer.", restaurant: restaurant1)

# Création des avis pour Les Gamines
Review.create!(rating: 5, content: "Parfait pour un brunch en famille. Les enfants ont adoré !", restaurant: restaurant2)
Review.create!(rating: 3, content: "Cadre sympa mais portions un peu petites à mon goût.", restaurant: restaurant2)
Review.create!(rating: 4, content: "Super accueil et carte variée. On reviendra !", restaurant: restaurant2)

# Création des avis pour La Cigale
Review.create!(rating: 5, content: "Un classique nantais. Décor magnifique et cuisine traditionnelle de qualité.", restaurant: restaurant3)
Review.create!(rating: 4, content: "Très touristique mais ça vaut le détour. Les fruits de mer étaient excellents.", restaurant: restaurant3)

# Création des avis pour L'Agave
Review.create!(rating: 5, content: "Fusion franco-mexicaine réussie. Le guacamole maison est à tomber !", restaurant: restaurant4)
Review.create!(rating: 3, content: "Cuisine originale mais prix un peu élevés.", restaurant: restaurant4)
Review.create!(rating: 4, content: "Cadre moderne et plats bien présentés. Une belle découverte.", restaurant: restaurant4)

# Création des avis pour Chez ta Mère
Review.create!(rating: 5, content: "Ambiance conviviale et plats généreux. On s'y sent comme chez soi !", restaurant: restaurant5)
Review.create!(rating: 4, content: "Bon rapport qualité-prix mais un peu bruyant le week-end.", restaurant: restaurant5)

# 3. Display a message 🎉
puts "Created #{Restaurant.count} restaurants with #{Review.count} reviews in total."

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

bouquet = Category.new(
  name: "Bouquets",
  position: 10,
  display: true
)
bouquet.save!
print "1 category / "

bouquet_printemps = Product.new(
  name: "Bouquet Printemps",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison sur le thème du printemps. Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction de vos préférences et de votre budget.",
  min_price: 35,
  position: 10,
  available: true,
  category: bouquet
)
# file = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694609863/Solstice/Bouquet_Printemps_apdtox.jpg")
# file2 = URI.open("https://res.cloudinary.com/dqfgqm3cn/image/upload/v1694699688/Solstice/Bouquet_Printemps2_br3b9g.jpg")
# bouquet_printemps.photos.attach(io: file, filename: "image.png", content_type: "image/png")
# bouquet_printemps.photos.attach(io: file2, filename: "image.png", content_type: "image/png")

bouquet_printemps.save!
print "1 product / "

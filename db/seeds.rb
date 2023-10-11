User.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)

bouquet = Category.new(
  name: "Bouquets",
  position: 10,
  display: true
)
print "1 category / "

bouquet_printemps = Product.new(
  name: "Bouquet Printemps",
  description: "Un somptueux bouquet de fleurs composé par Solstice avec des fleurs de saison sur le thème du printemps. Il s’agit d’une idée cadeau idéale pour un anniversaire ou pour remercier vos proches de leur soutien. Vous pouvez entièrement personnaliser ce bouquet en fonction de vos préférences et de votre budget.",
  min_price: 35,
  position: 10,
  available: true,
  category: bouquet
)

bouquet_printemps.save!
print "1 product / "

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

["users", "categories", "props"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

# mike = User.create!(
#   username: "mickyginger",
#   email: "mike.hayden@ga.co",
#   password: "password",
#   password_confirmation: "password"
# )
#
# emily = User.create!(
#   username: "emilyi",
#   email: "emily.isacke@ga.co",
#   password: "password",
#   password_confirmation: "password"
# )

almeida = User.create!(
  username: "Almeida Theatre",
  email: "almeidatheatre@propswap.com",
  address: "Almeida Street, Islington, London, N1 1TA",
  phone: "020 7359 4404",
  image: "",
  password: "password",
  password_confirmation: "password"
)

arcola = User.create!(
  username: "Arcola Theatre",
  email: "arcolatheatre@propswap.com",
  address: "24 Ashwin Street, Dalston, London, E8 3DL",
  phone: "020 7503 1646",
  image: "",
  password: "password",
  password_confirmation: "password"
)

bac = User.create!(
  username: "Battersea Arts Centre",
  email: "bac@propswap.com",
  address: "Lavender Hill, Battersea, London, SW11 5TN",
  phone: "020 7223 2223",
  image: "",
  password: "password",
  password_confirmation: "password"
)

cpt = User.create!(
  username: "Camden People's Theatre",
  email: "camdenpeoples@propswap.com",
  address: "58-60 Hampstead Road, London, NW1 2PY",
  phone: "08444 771000",
  image: "",
  password: "password",
  password_confirmation: "password"
)

newdiorama = User.create!(
  username: "New Diorama",
  email: "newdiorama@propswap.com",
  address: "15-16 Triton Street, Regent's Place, London, NW1 3BF",
  phone: "020 7383 9034",
  image: "",
  password: "password",
  password_confirmation: "password"
)

royalcourt = User.create!(
  username: "Royal Court Theatre",
  email: "@propswap.com",
  address: "Sloane Square, London, SW1W 8AS",
  phone: "020 7565 5000",
  image: "",
  password: "password",
  password_confirmation: "password"
)

youngvic = User.create!(
  username: "Young Vic",
  email: "youngvic@propswap.com",
  address: "66 The Cut, London, SE1 8LZ",
  phone: "020 7922 2922",
  image: "",
  password: "password",
  password_confirmation: "password"
)

Category.create!([{
  name: "Circus"
},{
  name: "Christmas"
},{
  name: "London"
},{
  name: "Modern"
},{
  name: "Wartime"
},{
  name: "Victorian"
}])

Prop.create!([{
  name: "Carousel horse",
  image: File.open(File.join(Rails.root, "db/images/carousel-horse.jpg")),
  description: "Full size carousel horse, slight chips on paintwork",
  user: youngvic,
  available: true,
  category_ids: [1,2,3,4,5,6]
},{
  name: "Telephone",
  image: File.open(File.join(Rails.root, "db/images/phone.jpg")),
  description: "Original black 1940s telephone, basic speaker fitted inside",
  user: arcola,
  available: true,
  category_ids: [3,5]
},{
  name: "Luggage",
  image: File.open(File.join(Rails.root, "db/images/luggage.jpg")),
  description: "Hollow stack, can't be used individually",
  user: arcola,
  available: true,
  category_ids: [3,5]
},{
  name: "Pantomime cow",
  image: File.open(File.join(Rails.root, "db/images/cow.jpg")),
  description: "Costume for two",
  user: youngvic,
  available: true,
  category_ids: [2,4]
},{
  name: "Chandelier",
  image: File.open(File.join(Rails.root, "db/images/chandelier.jpg")),
  description: "Fully functional, comes with spare candle lamps",
  user: royalcourt,
  available: true,
  category_ids: [6]
},{
  name: "Red phone box",
  image: File.open(File.join(Rails.root, "db/images/phone-box.jpg")),
  description: "Full size, light weight replica",
  user: bac,
  available: true,
  category_ids: [3,5]
}])

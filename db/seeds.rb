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

mike = User.create!(
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
)

emily = User.create!(
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
)

circus = Category.create!(
  name: "Circus"
)

pantomime = Category.create!(
  name: "Pantomime"
)

category3 = Category.create!(
  name: "1950s"
)

prop1 = Prop.create!(
  name: "Carousel horse",
  image: "http://bestoncarousels.com/wp-content/uploads/2015/03/carousel-horses-sale.jpg",
  description: "Full size carousel horse, slight chips on paintwork",
  user: emily,
  available: true
)

prop1.categories << circus
prop1.categories << pantomime

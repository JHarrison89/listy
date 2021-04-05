puts "Running seed..."

puts "Destroying Items table..."
Item.destroy_all

puts "Destroying Lists table..."
List.destroy_all

puts "Destroying User table..."
User.destroy_all

puts "Creating users..."
jeremaia = User.create!(first_name: 'Jeremaia', last_name: 'Harrison', email: 'jeremaia@example.com', password: '123456')
tania = User.create!(first_name: 'Tania', last_name: 'Fernandes', email: 'tania@example.com', password: '123456')

puts "Creating Jeremaia's list..."
list = List.create!(
  owner: jeremaia.first_name,
  title: "Jeremaia's list",
  user_id: jeremaia.id
)

puts "Adding items to Jeremaia's list..."
item = Item.create!(
  item_name: "Tropicfeel",
  description: "A backpack and wardrobe system",
  price: 192,
  link: "www.titemropicfeel.com",
  buyer: tania.id,
  list_id: list.id,
  user_id: jeremaia.id
)

puts "Creating tania's list..."
list = List.create!(
  owner: tania.first_name,
  title: "Tania's list",
  user_id: tania.id
)

puts "Adding items to tania's list..."
Item.create!(
  item_name: "Webcam",
  description: "Logitech C920s Webcam, Black",
  price: 84.99,
  link: "www.johnlewis.com",
  list_id: list.id,
  user_id: tania.id
)


puts "Seed complete 🌱"


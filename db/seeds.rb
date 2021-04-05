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
lee = User.create!(first_name: 'Lee', last_name: 'Harrison', email: 'lee@example.com', password: '123456')


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

item = Item.create!(
  item_name: "Tortoise Lamp",
  description: "Tiffany Green Tortoise Table Lamp",
  price: 43.99,
  link: "www.tiffanylightingdirect.co.uk",
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

Item.create!(
  item_name: "Tabby Cat",
  description: "An addopted cat",
  price: 50,
  link: "www.cats.org.uk",
  list_id: list.id,
  user_id: tania.id
)

Item.create!(
  item_name: "Trainers",
  description: "Cool trainers for summer!",
  price: 34.99,
  link: "www.trainers.com",
  list_id: list.id,
  user_id: tania.id
)

puts "Creating Lee's list..."
list = List.create!(
  owner: lee.first_name,
  title: "Lee's list",
  user_id: lee.id
)

puts "Adding items to Lee's list..."
Item.create!(
  item_name: "Sky diving lession",
  description: "I want to go Sky diving!",
  price: 200,
  link: "ukparachuting.co.uk",
  list_id: list.id,
  user_id: lee.id
)

Item.create!(
  item_name: "Hedgehog",
  description: "An addopted Hedgehog",
  price: 50,
  link: "www.Hedgehog.org.uk",
  list_id: list.id,
  user_id: lee.id
)

Item.create!(
  item_name: "Bunge Jumping",
  description: "I want to go bunge jumping!",
  price: 34.99,
  link: "www.bungee-jumping.com",
  list_id: list.id,
  user_id: lee.id
)

puts "Seed complete 🌱"


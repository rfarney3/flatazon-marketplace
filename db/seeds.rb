# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ["Books and Audible", "Movies, Music, and Games", "Electronics, Computers and Office", "Home, Garden, Pets and Tools", "Restaurant, Food and Grocery", "Beauty and Health", "Toys, Kids and Baby", "Clothing, Shoes and Jewelry", "Handmade", "Sports and Outdoors", "Automotive and Industrial"]

categories.each {|cat| Category.create(name: cat)}

item_keys = ["name", "price", "quantity", "category"]
items = [
  ["Harry Potter and the Prisoner of Flatiron", 39, 20, Category.find_by(name: "Books and Audible")],
  ["The Coding Bible", 10, 30, Category.find_by(name: "Books and Audible")],
  ["Water Boy", 5, 10, Category.find_by(name: "Movies, Music and Games")],
  ["DAMN.", 20, 50, Category.find_by(name: "Movies, Music and Games")],
  ["Ass Effect 3", 30, 8, Category.find_by(name: "Movies, Music and Games")],
  ["iPod Classic", 20, 3, Category.find_by(name: "Electronics, Computers and Office")],
  ["GTX 2020", 1000, 4, Category.find_by(name: "Electronics, Computers and Office")],
  ["Printing Paper 200 ct", 12, 50, Category.find_by(name: "Electronics, Computers and Office")],
  ["Mirror", 50, 10, Category.find_by(name: "Home, Garden, Pets and Tools")],
  ["Shovel", 18, 30, Category.find_by(name: "Home, Garden, Pets and Tools")],
  ["Dog Chew Toy", 4, 20, Category.find_by(name: "Home, Garden, Pets and Tools")],
  ["Ultra White Paint", 13, 20, Category.find_by(name: "Home, Garden, Pets and Tools")],
  ["Dining Set - Set of 4", 20, 20, Category.find_by(name: "Restaurant, Food and Grocery")],
  ["Assorted Chocolates 1000 ct", 30, 20, Category.find_by(name: "Restaurant, Food and Grocery")],
  ["Brocolli", 1, 20, Category.find_by(name: "Restaurant, Food and Grocery")],
  ["Makeup", 30, 20, Category.find_by(name: "Beauty and Health")],
  ["Dentures", 12, 24, Category.find_by(name: "Beauty and Health")],
  ["Fidget Spinner", 3, 80, Category.find_by(name: "Toys, Kids and Baby")],
  ["8 Year Old", 10000, 1, Category.find_by(name: "Toys, Kids and Baby")],
  ["1 Year Old", 40000, 1, Category.find_by(name: "Toys, Kids and Baby")],
  ["T-Shirt", 4, 90, Category.find_by(name: "Clothing, Shoes and Jewelry")],
  ["Jordan 99", 280, 23, Category.find_by(name: "Clothing, Shoes and Jewelry")],
  ["\"Diamond\"", 1000, 60, Category.find_by(name: "Clothing, Shoes and Jewelry")],
  ["Basket", 100, 10, Category.find_by(name: "Handmade")],
  ["Basketsball", 17, 20, Category.find_by(name: "Sports and Outdoors")],
  ["Rock", 1, 99, Category.find_by(name: "Sports and Outdoors")],
  ["Car Horn", 15, 20, Category.find_by(name: "Automotive and Industrial")],
  ["Monkey Wrench", 10, 35, Category.find_by(name: "Automotive and Industrial")],
]

items.each do |item|
  new_item = Item.new
  item.each_with_index do |attribute, i|
    new_item.send(item_keys[i]+"=", attribute)
  end
  new_item.save
end

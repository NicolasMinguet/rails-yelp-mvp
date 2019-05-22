require 'faker'

puts 'cleaning database'
Restaurant.destroy_all

puts 'creating new restaurants'
10.times do
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  Restaurant.create!(
    name: Faker::JapaneseMedia::OnePiece.character,
    address: Faker::Movies::HarryPotter.location,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category
  )
end

puts 'created 10 great restaurants'

require 'faker'

City.destroy_all
Tag.destroy_all
PrivateMessage.destroy_all
User.destroy_all
Gossip.destroy_all
TagGossip.destroy_all

# seed pour les city
10.times do
  City.create!(
    name: Faker::Address.city,
    zip_code: Faker::Address.zip_code
  )
end

# seed pour les tag
10.times do
  Tag.create!(
    title: Faker::Lorem.word
  )
end

# seed message privés
20.times do
  PrivateMessage.create!(
    content: Faker::Lorem.paragraph(2)
  )
end

# seed user
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.sentence,
    email: Faker::Internet.email,
    age: Faker::Number.between(7, 77),
    city_id: City.all.sample.id
  )
end

# seed gossip
20.times do
  Gossip.create!(
    title: Faker::Lorem.sentence(3),
    content: Faker::Lorem.paragraph(3),
    user_id: User.all.sample.id
  )
end

# seed tag_gossip
30.times do
  TagGossip.create!(
    tag_id: Tag.all.sample.id,
    gossip_id: Gossip.all.sample.id
  )
end


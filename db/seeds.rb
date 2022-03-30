# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

admin = User.create!(username:"admin")

10.times do
    Item.create!(
        name: Faker::Address.street_name,
        description: Faker::Lorem.sentence(word_count: 15), 
        image: Faker::Placeholdit.image(size: '350x250', format: 'jpg'), 
        price: rand(1000..10000), 
        city: Faker::Address.city, 
        capacity: rand(500..5000), 
        user_id: admin.id
    )
end

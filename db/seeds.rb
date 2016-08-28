# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
10000.times do
#   House.create(
#   	house_number: Faker::Number.between(1, 1000)
#    )

     Person.create(
    	name: Faker::Name.name,
    	house_id: Faker::Number.between(115153, 125152)
     )

    CustomHouse.create(
    	custom_name: Faker::Name.first_name,
    	custom_value: Faker::Name.first_name,
    	house_id: Faker::Number.between(115153, 125152)
    )

    Street.create(
    	street_name: Faker::Address.street_name,
    	house_id: Faker::Number.between(115153, 125152)
    )   
end 
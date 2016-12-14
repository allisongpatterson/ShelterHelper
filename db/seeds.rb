# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

shelters = [
  { name: 'Second Chance', city: 'Sunnyvale', phone: '123-456-7890' },
  { name: 'Fur Babies', city: 'Santa Clara', phone: '234-567-8901' },
  { name: 'Pet World', city: 'Natik', phone: '345-678-9012' }
]

shelters.each do |attributes|
  Shelter.create!(attributes)
end

animals = [
  { name: 'Bruce', age: 4, sex: 'male', shelter_id: 1 },
  { name: 'Mabel', age: 7, sex: 'female', shelter_id: 3 },
  { name: 'Boots', age: 2, sex: 'male', shelter_id: 2 }
]

animals.each do |attributes|
  Animal.create!(attributes)
end

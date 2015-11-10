# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
BeerChoice.delete_all
Location.delete_all
Beer.delete_all
User.delete_all


# Create 3 Users
%w(tom fred jane).each do |name|
  email = "#{name}@example.com"
  user = User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')

end

cities = ['Boston', 'NYC', 'Lowell']
states = ['MA', 'NY', 'MA']

3.times do |location_num|
  Location.create!(name: "Location_#{location_num}", street_num: 5 * location_num, street: 'Elm', city: cities[location_num], state: states[location_num] )
end

beers = ['Boston Lager', 'UFO', 'Vanilla Porter', "Schlitz", 'Michelob', 'Miller', 'Grolsh', 'Heineken', 'Blue Moon', 'Rolling Rock', 'Bass', 'Guiness']
breweries = ['Sam Adams', 'Harpoon', 'Breckenridge', 'Latrobe']
style = ['Vienna Lager', 'Hefeweizen', 'Porter', 'Gose']

12.times do |i|
  Beer.create!(name: beers[i], brewery: breweries[i], style: style[i])
end


Beer.all.each do |beer|
  location = Location.all.sample
  location.beers << beer
end

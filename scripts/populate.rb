Tap.delete_all
Beer.delete_all
Location.delete_all
User.delete_all

locations = ['Salty Pig', 'Lime Leaf', 'Punjab Cafe']
street_nums = [33, 56, 77]
streets = ['Comm Ave', 'Melcher', 'Quincy Shore Drive']
cities = ['Boston', 'Cambridge', 'Lowell']
states = ['MA', 'MA', 'MA']

3.times do |i|
  Location.create!(name: locations[i], street_num: 44, street: streets[i], city: cities[i], state: states[i])
end

beers = ['Boston Lager', 'UFO', 'Vanilla Porter', 'Schlitz', 'Michelob', 'Miller', 'Grolsh', 'Heineken', 'Blue Moon', 'Rolling Rock', 'Bass', 'Guiness']
breweries = ['Sam Adams', 'Harpoon', 'Breckenridge', 'Latrobe', 'Coors', 'Rolling Rock', 'Blue Moon', 'Anderson Valley', 'Great Divide', 'Avery', 'Boulder Beer']
style = ['Vienna Lager', 'Hefeweizen', 'Porter', 'Gose', 'American Lager', 'Strong Ale', 'Russian Imperial Stout', 'Saison', 'Barely Wine', 'Red Ale', 'Brown Ale', 'Pale Ale']

12.times do |i|
  Beer.create!(name: beers[i], brewery: breweries[i], style: style[i])
end


Beer.all.each do |beer|
  location = Location.all.sample
  location.beers << beer
end

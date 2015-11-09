# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.delete_all

# Create 3 Users
%w(tom fred jane).each do |name|
  email = "#{name}@example.com"
  next if User.exists? email: email
  user = User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')

  3.times do |location_num|
    user.locations.create!(name: "Location_#{location_num}", street_num: 5 * location_num, street: 'Elm', city: 'Boston', state: 'MA' )
  end
end

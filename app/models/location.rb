class Location < ActiveRecord::Base

  has_many :beer_choices
  has_many :beers, through: :beer_choices
end

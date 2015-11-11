class Location < ActiveRecord::Base
  has_many :taps
  has_many :beers, through: :taps
end

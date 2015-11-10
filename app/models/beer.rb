#
class Beer < ActiveRecord::Base

  has_many :beer_choices
  has_many :locations, through: :beer_choices
end

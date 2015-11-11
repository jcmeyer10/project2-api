#
class Beer < ActiveRecord::Base
  belongs_to :user
  has_many :beer_choices
  has_many :locations, through: :beer_choices
end



#
class Beer < ActiveRecord::Base
  has_many :taps
  has_many :locations, through: :taps
end


#
class User < ActiveRecord::Base
  include Authentication

  has_many :beers
  has_many :locations
end

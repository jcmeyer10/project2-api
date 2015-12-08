#
class User < ActiveRecord::Base
  include Authentication

  has_many :beers
end

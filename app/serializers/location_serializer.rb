class LocationSerializer < ActiveModel::Serializer
  attributes :name, :street_num, :street, :city, :state
end

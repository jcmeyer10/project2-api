class BeerSerializer < ActiveModel::Serializer
  attributes :name, :brewery, :style, :created_at, :id
end

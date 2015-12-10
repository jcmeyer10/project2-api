class BeerSerializer < ActiveModel::Serializer
  attributes :name, :brewery, :style, :quantity, :created_at, :id
end

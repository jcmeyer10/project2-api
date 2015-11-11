class BeerSerializer < ActiveModel::Serializer
  attributes :name, :brewery, :style, :created_at
end

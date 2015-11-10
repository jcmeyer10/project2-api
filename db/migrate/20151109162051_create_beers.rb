class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :brewery
      t.string :style

      t.timestamps null: false
    end
  end
end


# curl --request POST --header "Authorization: Token token=27bb3766073e3209611302f47eceafba" --header "Content-Type: application/json" -d '{
#   "book": {
#     "name":"UFO",
#     "brewery":"Harpoon",
#     "type":"Hefeweizen"
#   }
# }'  http://localhost:3000/beers

class AddBeerRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :beer, index: true, foreign_key: true
  end
end

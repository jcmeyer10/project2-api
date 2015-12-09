class CreateBeerListJoinTable < ActiveRecord::Migration
  def create_table
    t.integer :user_id
    t.integer :beer_id
  end
end

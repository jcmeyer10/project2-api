class AddBeerRefToTaps < ActiveRecord::Migration
  def change
    add_reference :taps, :beer, index: true, foreign_key: true
  end
end

class AddLocationRefToTaps < ActiveRecord::Migration
  def change
    add_reference :taps, :location, index: true, foreign_key: true
  end
end

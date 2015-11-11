class CreateTaps < ActiveRecord::Migration
  def change
    create_table :taps do |t|

      t.timestamps null: false
    end
  end
end

class CreateBeerChoices < ActiveRecord::Migration
  def change
    create_table :beer_choices do |t|
      t.references :beer, index: true, foreign_key: true
      t.references :location, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

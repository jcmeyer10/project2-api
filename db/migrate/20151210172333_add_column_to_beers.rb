class AddColumnToBeers < ActiveRecord::Migration
  def change
    add_column :beers, :quantity, :string
  end
end

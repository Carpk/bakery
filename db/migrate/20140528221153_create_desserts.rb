class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string  :name
      t.string  :category
      t.text    :description
      t.text 	  :ingredients
      t.integer :views
      t.integer :price

      t.timestamps
    end
  end
end

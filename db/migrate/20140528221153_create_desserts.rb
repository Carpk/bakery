class CreateDesserts < ActiveRecord::Migration
  def change
    create_table :desserts do |t|
      t.string :name
      t.string :category
      t.text   :description

      t.timestamps
    end
  end
end

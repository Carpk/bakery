class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.references :dessert
      t.string     :name
      t.boolean    :default, default: false
      t.string     :picture_url

      t.timestamps
    end
  end
end

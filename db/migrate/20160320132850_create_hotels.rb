class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.integer :price
      t.integer :rating
      t.integer :assessement

      t.timestamps null: false
    end
  end
end

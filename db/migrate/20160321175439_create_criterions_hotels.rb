class CreateCriterionsHotels < ActiveRecord::Migration
  def change
    create_table :criterions_hotels do |t|
      t.integer :criterion_id
      t.integer :hotel_id

      t.timestamps null: false
    end
  end
end

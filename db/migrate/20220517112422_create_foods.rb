class CreateFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.text :name
      t.text :measurement_unit
      t.string :price

      t.timestamps
    end
  end
end

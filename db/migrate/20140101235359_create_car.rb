class CreateCar < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.references :color, null: false
      t.integer :year, null: false
      t.integer :mileage, null: false
      t.text :description

      t.timestamps
    end
  end
end

class CreateColor < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end

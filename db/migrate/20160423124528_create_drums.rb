class CreateDrums < ActiveRecord::Migration
  def change
    create_table :drums do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :swap

      t.timestamps null: false
    end
  end
end

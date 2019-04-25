class CreateGroceries < ActiveRecord::Migration[5.2]
  def change
    create_table :groceries do |t|
      t.string :name
      t.string :amount
      t.string :food_type

      t.timestamps
    end
  end
end

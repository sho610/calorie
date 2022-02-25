class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|

      t.string :food
      t.integer :calorie
      t.integer :total_calorie
      t.string :eat_timing
      t.datetime :eat_time


      t.timestamps
    end
  end
end

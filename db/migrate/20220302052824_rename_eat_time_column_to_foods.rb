class RenameEatTimeColumnToFoods < ActiveRecord::Migration[5.2]
  def change
    rename_column :foods, :eat_time, :start_time
  end
end

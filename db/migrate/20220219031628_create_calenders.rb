class CreateCalenders < ActiveRecord::Migration[5.2]
  def change
    create_table :calenders do |t|

      t.string :title
      t.text :content
      t.datetime :start_time

      t.timestamps
    end
  end
end
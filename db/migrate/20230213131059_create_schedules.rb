class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :title , null: false
      t.text :detail , null: false
      t.integer :category_id , null: false
      t.integer :number_of_people_id, null: false
      t.integer :budget_id, null: false
      t.timestamps
    end
  end
end

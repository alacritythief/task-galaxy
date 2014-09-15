class CreateTaskLists < ActiveRecord::Migration
  def change
    create_table :task_lists do |t|
      t.text :tasks
      t.string :name, null: false
      t.text :description
      t.integer :user_ids
    end
  end
end

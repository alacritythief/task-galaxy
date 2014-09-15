class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.text :descripton
      t.date :due_date
      t.integer :user_id
    end
  end
end

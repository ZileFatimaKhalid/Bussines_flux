class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
     
      t.date :due_date
      t.string :task_type
      t.string :title, index: true

      t.timestamps
    end
  end
end

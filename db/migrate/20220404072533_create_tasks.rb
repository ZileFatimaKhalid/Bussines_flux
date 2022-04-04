class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.date :due_date
      t.string :type

      t.timestamps
    end
  end
end
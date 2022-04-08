class AddAssigneeToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :assignee_id, :integer
    add_column :tasks, :bussiness_id, :integer
    add_column :tasks, :task_type, :string
  end
end

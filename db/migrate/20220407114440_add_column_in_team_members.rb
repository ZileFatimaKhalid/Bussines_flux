class AddColumnInTeamMembers < ActiveRecord::Migration[5.2]
  def change
  	add_column :team_members, :user_id, :integer
  	add_column :team_members, :bussiness_id, :integer


  end
end

class Bussiness < ApplicationRecord
	has_many :tasks, foreign_key: 'bussiness_id'
	has_many :team_members
	has_many :users, through: :team_members
end

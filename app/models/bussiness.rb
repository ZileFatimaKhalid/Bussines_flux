class Bussiness < ApplicationRecord
	has_many :tasks
	has_many :team_members
	has_many :users, through: :team_members
end

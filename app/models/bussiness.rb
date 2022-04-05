class Bussiness < ApplicationRecord
	has_many :tasks
	has_many :team_member
	has_many :user, through: :team_member
end

class TeamMember < ApplicationRecord
	belongs_to :user, foreign_key: 'user_id'
	belongs_to :bussiness, foreign_key: 'bussiness_id'
end

class TeamMember < ApplicationRecord
	belongs_to :user
	belongs_to :bussiness
end

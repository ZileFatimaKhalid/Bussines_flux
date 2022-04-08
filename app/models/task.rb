class Task < ApplicationRecord
	belongs_to :user, foreign_key: 'assignee_id'
	belongs_to :assignee, class_name: "User"
	belongs_to :bussiness, optional: true
end

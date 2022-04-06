class Task < ApplicationRecord
	self.primary_key = "title"
	belongs_to :bussiness 
end

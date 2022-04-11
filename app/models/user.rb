class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
	has_many :team_members
	has_many :tasks, foreign_key: 'assignee_id'
	has_many :bussinesses, through: :team_members


end

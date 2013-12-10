class Band < ActiveRecord::Base
	has_many :members
	has_many :users, through: :members 
	has_many :events, dependent: :destroy
	has_many :followers
	has_and_belongs_to_many :genres
	
end

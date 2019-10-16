class League < ApplicationRecord

	validates :team, presence: true, uniqueness: true
	
end 

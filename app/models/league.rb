class League < ApplicationRecord

	validates :team, presence: true, uniqueness: true

	def self.add(leagues)
		create(leagues)
	end

end

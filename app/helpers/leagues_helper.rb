module LeaguesHelper

	def get_smallest_diff_team(leagues)
		min_diff = 10000
		team = ""
		leagues.each do |league|
			current_diff = (league.f - league.a).abs
			if (current_diff < min_diff)
      			min_diff = current_diff
				team = league.team
			end
		end
		team
	end


end

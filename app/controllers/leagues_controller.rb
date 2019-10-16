class LeaguesController < ApplicationController
  
  def index
  	@leagues = League.order("pos ASC")
  	@smallest_diff_team = get_smallest_diff_team(@leagues)
  end

  def raw
  	render file: Rails.root+"tmp/football.dat"
  end

end

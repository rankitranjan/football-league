require 'test_helper'
require 'rake'

class FootballLeagueTest < ActiveSupport::TestCase
	test "football_league:parse" do
		parse = Parse.start
		assert parse
		assert_kind_of Array, parse
	end
end

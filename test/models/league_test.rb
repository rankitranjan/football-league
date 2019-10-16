require 'test_helper'
require 'minitest/autorun'

class LeagueTest < ActiveSupport::TestCase

  def setup
    @league = leagues(:league)
  end

  test 'valid league' do
    assert @league.valid?
  end

  test 'league is invalid without team' do
    @league.team = nil
    refute @league.valid?
    assert_not_nil @league.errors[:team]
  end

  test 'add league' do
  	# mock = Minitest::Mock.new
  	# def mock.add; []; end
  	# League.stub :add, mock do
  	# 	assert []
  	# end
  end

end

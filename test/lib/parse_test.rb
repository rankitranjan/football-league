require 'test_helper'
require 'minitest/autorun'

class ParseTest < ActiveSupport::TestCase

  test "get_file" do
    file = File.open(Rails.root+"tmp/football.dat", "r")
    assert File.exist?(Rails.root+"tmp/football.dat")
    assert Parse.get_file
    assert_not_nil file
  end

  test "return false if row is not valid" do
    row = " ---   3. Manchester_U    38    24   5   9    87  -  45    77\n"
    refute Parse.is_valid_row?(row)
    assert_equal Parse.is_valid_row?(row), false
  end

  test "return true if row is valid" do
    row = "    3. Manchester_U    38    24   5   9    87  -  45    77\n"
    assert_equal Parse.is_valid_row?(row), true
    assert Parse.is_valid_row?(row)
  end

  test "format_data" do
    row = "    3. Manchester_U    38    24   5   9    87  -  45    77\n"
    formated_data = { "pos"=>"3.", "team"=>"Manchester_U", "p"=>"38", "w"=>"24", "l"=>"5", "d"=>"9", "f"=>"87", "a"=>"45", "pts"=>"77" }
    assert_equal Parse.format_data(row), formated_data
  end

  test 'start' do
    mock = Minitest::Mock.new
    #def mock.start; []; end
    #Parse.stub :start, mock do
    #  assert []
    #end
  end

end

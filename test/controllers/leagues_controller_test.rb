require 'test_helper'

class LeaguesControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage page" do
    get root_url
    assert_not_nil assigns(:leagues)
    assert_not_nil assigns(:smallest_diff_team)
    assert_template :index
    assert_response :success
  end

  test "should get raw page" do
    get raw_url
    assert_response :success
  end

end

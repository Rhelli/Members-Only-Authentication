require 'test_helper'

class MembersOnlyControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get members_only_home_url
    assert_response :success
  end

  test "should get about" do
    get members_only_about_url
    assert_response :success
  end

end

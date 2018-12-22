require 'test_helper'

class MembersControllerTest < ActionDispatch::IntegrationTest
  test "should get signin" do
    get members_signin_url
    assert_response :success
  end

end

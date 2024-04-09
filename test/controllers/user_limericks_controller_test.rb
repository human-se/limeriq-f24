require "test_helper"

class UserLimericksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    user = users(:one)
    limericks_size = user.limericks.size
    sign_in user
    get user_limericks_url(user)
    assert_response :success
    assert_select 'div.card', limericks_size
  end

end

require "test_helper"

class LimericksControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    limericks_size = limericks.size
    get root_url
    assert_response :success
    assert_select 'div.card', limericks_size
  end

end

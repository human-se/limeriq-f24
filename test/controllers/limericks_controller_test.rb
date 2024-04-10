require "test_helper"

class LimericksControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "should get index" do
    limericks_size = limericks.size
    get root_url
    assert_response :success
    assert_select 'div.card', limericks_size
  end

  test "should get new" do
    user = users(:one)
    sign_in user
    get new_limerick_url
    assert_response :success
    assert_select 'h1', "New Limerick"
  end

  test "should create limerick" do
    user = users(:one)
    sign_in user
    assert_difference("Limerick.count", +1) do
      post limericks_url, params: {
        limerick: {
          title: 'There was an odd fellow named Gus',
          limerick_text: "There was an odd fellow named Gus,\nWhen traveling he made such a fuss.\nHe was banned from the train,\nNot allowed on a plane,\nAnd now travels only by bus."
        }
      }      
    end
    assert_response :redirect
    assert_redirected_to root_url
    assert_not_nil flash['success']
  end

  test "should destroy limerick" do
    user = users(:one)
    sign_in user
    limerick = user.limericks.first
    assert_difference("Limerick.count", -1) do
      delete limerick_url(limerick)
    end
    assert_response :redirect
    assert_redirected_to root_url
    assert_not_nil flash[:success]
  end

end

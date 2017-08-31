require 'test_helper'

class MainPageControllerTest < ActionDispatch::IntegrationTest
  test "should get call_details" do
    get main_page_call_details_url
    assert_response :success
  end

  test "should get agents" do
    get main_page_agents_url
    assert_response :success
  end

end

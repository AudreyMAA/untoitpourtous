require 'test_helper'

class DemandsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get demands_new_url
    assert_response :success
  end

  test "should get create" do
    get demands_create_url
    assert_response :success
  end

end

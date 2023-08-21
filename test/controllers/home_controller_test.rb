require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get indexx" do
    get home_indexx_url
    assert_response :success
  end
end

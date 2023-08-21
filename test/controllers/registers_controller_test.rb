require "test_helper"

class RegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get registers_index_url
    assert_response :success
  end

  test "should get create" do
    get registers_create_url
    assert_response :success
  end
end

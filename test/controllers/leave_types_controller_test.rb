require "test_helper"

class LeaveTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get leave_types_index_url
    assert_response :success
  end
end

require 'test_helper'

class EmpanadasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get empanadas_index_url
    assert_response :success
  end

end

require 'test_helper'

class MarksControllerTest < ActionController::TestCase
  test "should get AddMarks" do
    get :AddMarks
    assert_response :success
  end

end

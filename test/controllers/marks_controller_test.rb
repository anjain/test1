require 'test_helper'

class MarksControllerTest < ActionController::TestCase
  test "should get admin" do
    get :admin
    assert_response :success
  end

  test "should get student" do
    get :student
    assert_response :success
  end

end

require 'test_helper'

class ResultsControllerTest < ActionController::TestCase
  test "should get result" do
    get :result
    assert_response :success
  end

end

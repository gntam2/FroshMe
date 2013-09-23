require 'test_helper'

class SubscriptionControllerTest < ActionController::TestCase
  test "should get follow" do
    get :follow
    assert_response :success
  end

end

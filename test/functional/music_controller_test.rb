require 'test_helper'

class MusicControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get view" do
    get :view
    assert_response :success
  end

  test "should get newsong" do
    get :newsong
    assert_response :success
  end

  test "should get addsong" do
    get :addsong
    assert_response :success
  end

end

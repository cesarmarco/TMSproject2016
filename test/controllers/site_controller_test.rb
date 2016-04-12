require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get title:string" do
    get :title:string
    assert_response :success
  end

  test "should get body:text" do
    get :body:text
    assert_response :success
  end

end

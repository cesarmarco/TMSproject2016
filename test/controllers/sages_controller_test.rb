require 'test_helper'

class SagesControllerTest < ActionController::TestCase
  setup do
    @sage = sages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sage" do
    assert_difference('Sage.count') do
      post :create, sage: { body: @sage.body, comapany: @sage.comapany, email: @sage.email, name: @sage.name, subject: @sage.subject }
    end

    assert_redirected_to sage_path(assigns(:sage))
  end

  test "should show sage" do
    get :show, id: @sage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sage
    assert_response :success
  end

  test "should update sage" do
    patch :update, id: @sage, sage: { body: @sage.body, comapany: @sage.comapany, email: @sage.email, name: @sage.name, subject: @sage.subject }
    assert_redirected_to sage_path(assigns(:sage))
  end

  test "should destroy sage" do
    assert_difference('Sage.count', -1) do
      delete :destroy, id: @sage
    end

    assert_redirected_to sages_path
  end
end

require 'test_helper'

class MessagsControllerTest < ActionController::TestCase
  setup do
    @messag = messags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messag" do
    assert_difference('Messag.count') do
      post :create, messag: { body: @messag.body, comapany: @messag.comapany, email: @messag.email, name: @messag.name, subject: @messag.subject }
    end

    assert_redirected_to messag_path(assigns(:messag))
  end

  test "should show messag" do
    get :show, id: @messag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messag
    assert_response :success
  end

  test "should update messag" do
    patch :update, id: @messag, messag: { body: @messag.body, comapany: @messag.comapany, email: @messag.email, name: @messag.name, subject: @messag.subject }
    assert_redirected_to messag_path(assigns(:messag))
  end

  test "should destroy messag" do
    assert_difference('Messag.count', -1) do
      delete :destroy, id: @messag
    end

    assert_redirected_to messags_path
  end
end

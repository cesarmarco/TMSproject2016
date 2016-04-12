require 'test_helper'

class MesagesControllerTest < ActionController::TestCase
  setup do
    @mesage = mesages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mesages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mesage" do
    assert_difference('Mesage.count') do
      post :create, mesage: { body: @mesage.body, company: @mesage.company, email: @mesage.email, name: @mesage.name, phone: @mesage.phone, subject: @mesage.subject }
    end

    assert_redirected_to mesage_path(assigns(:mesage))
  end

  test "should show mesage" do
    get :show, id: @mesage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mesage
    assert_response :success
  end

  test "should update mesage" do
    patch :update, id: @mesage, mesage: { body: @mesage.body, company: @mesage.company, email: @mesage.email, name: @mesage.name, phone: @mesage.phone, subject: @mesage.subject }
    assert_redirected_to mesage_path(assigns(:mesage))
  end

  test "should destroy mesage" do
    assert_difference('Mesage.count', -1) do
      delete :destroy, id: @mesage
    end

    assert_redirected_to mesages_path
  end
end

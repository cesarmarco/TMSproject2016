require 'test_helper'

class MezagesControllerTest < ActionController::TestCase
  setup do
    @mezage = mezages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mezages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mezage" do
    assert_difference('Mezage.count') do
      post :create, mezage: { body: @mezage.body, company: @mezage.company, email: @mezage.email, name: @mezage.name, phone: @mezage.phone, subject: @mezage.subject }
    end

    assert_redirected_to mezage_path(assigns(:mezage))
  end

  test "should show mezage" do
    get :show, id: @mezage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mezage
    assert_response :success
  end

  test "should update mezage" do
    patch :update, id: @mezage, mezage: { body: @mezage.body, company: @mezage.company, email: @mezage.email, name: @mezage.name, phone: @mezage.phone, subject: @mezage.subject }
    assert_redirected_to mezage_path(assigns(:mezage))
  end

  test "should destroy mezage" do
    assert_difference('Mezage.count', -1) do
      delete :destroy, id: @mezage
    end

    assert_redirected_to mezages_path
  end
end

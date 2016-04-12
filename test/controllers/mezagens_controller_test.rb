require 'test_helper'

class MezagensControllerTest < ActionController::TestCase
  setup do
    @mezagen = mezagens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mezagens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mezagen" do
    assert_difference('Mezagen.count') do
      post :create, mezagen: { body: @mezagen.body, comapany: @mezagen.comapany, email: @mezagen.email, name: @mezagen.name, subject: @mezagen.subject }
    end

    assert_redirected_to mezagen_path(assigns(:mezagen))
  end

  test "should show mezagen" do
    get :show, id: @mezagen
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mezagen
    assert_response :success
  end

  test "should update mezagen" do
    patch :update, id: @mezagen, mezagen: { body: @mezagen.body, comapany: @mezagen.comapany, email: @mezagen.email, name: @mezagen.name, subject: @mezagen.subject }
    assert_redirected_to mezagen_path(assigns(:mezagen))
  end

  test "should destroy mezagen" do
    assert_difference('Mezagen.count', -1) do
      delete :destroy, id: @mezagen
    end

    assert_redirected_to mezagens_path
  end
end

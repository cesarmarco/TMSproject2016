require 'test_helper'

class MsagemsControllerTest < ActionController::TestCase
  setup do
    @msagem = msagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:msagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create msagem" do
    assert_difference('Msagem.count') do
      post :create, msagem: { body: @msagem.body, company: @msagem.company, email: @msagem.email, name: @msagem.name, phone: @msagem.phone, subject: @msagem.subject }
    end

    assert_redirected_to msagem_path(assigns(:msagem))
  end

  test "should show msagem" do
    get :show, id: @msagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @msagem
    assert_response :success
  end

  test "should update msagem" do
    patch :update, id: @msagem, msagem: { body: @msagem.body, company: @msagem.company, email: @msagem.email, name: @msagem.name, phone: @msagem.phone, subject: @msagem.subject }
    assert_redirected_to msagem_path(assigns(:msagem))
  end

  test "should destroy msagem" do
    assert_difference('Msagem.count', -1) do
      delete :destroy, id: @msagem
    end

    assert_redirected_to msagems_path
  end
end

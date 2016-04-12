require 'test_helper'

class MessagemsControllerTest < ActionController::TestCase
  setup do
    @messagem = messagems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:messagems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create messagem" do
    assert_difference('Messagem.count') do
      post :create, messagem: { body: @messagem.body, company: @messagem.company, email: @messagem.email, name: @messagem.name, phone: @messagem.phone, subject: @messagem.subject }
    end

    assert_redirected_to messagem_path(assigns(:messagem))
  end

  test "should show messagem" do
    get :show, id: @messagem
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @messagem
    assert_response :success
  end

  test "should update messagem" do
    patch :update, id: @messagem, messagem: { body: @messagem.body, company: @messagem.company, email: @messagem.email, name: @messagem.name, phone: @messagem.phone, subject: @messagem.subject }
    assert_redirected_to messagem_path(assigns(:messagem))
  end

  test "should destroy messagem" do
    assert_difference('Messagem.count', -1) do
      delete :destroy, id: @messagem
    end

    assert_redirected_to messagems_path
  end
end

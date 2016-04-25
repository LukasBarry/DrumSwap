require 'test_helper'

class DrumsControllerTest < ActionController::TestCase
  setup do
    @drum = drums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:drums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create drum" do
    assert_difference('Drum.count') do
      post :create, drum: { description: @drum.description, name: @drum.name, price: @drum.price, swap: @drum.swap }
    end

    assert_redirected_to drum_path(assigns(:drum))
  end

  test "should show drum" do
    get :show, id: @drum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @drum
    assert_response :success
  end

  test "should update drum" do
    patch :update, id: @drum, drum: { description: @drum.description, name: @drum.name, price: @drum.price, swap: @drum.swap }
    assert_redirected_to drum_path(assigns(:drum))
  end

  test "should destroy drum" do
    assert_difference('Drum.count', -1) do
      delete :destroy, id: @drum
    end

    assert_redirected_to drums_path
  end
end

require 'test_helper'

class DialiesControllerTest < ActionController::TestCase
  setup do
    @dialy = dialies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dialies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dialy" do
    assert_difference('Dialy.count') do
      post :create, dialy: { body: @dialy.body, title: @dialy.title }
    end

    assert_redirected_to dialy_path(assigns(:dialy))
  end

  test "should show dialy" do
    get :show, id: @dialy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dialy
    assert_response :success
  end

  test "should update dialy" do
    patch :update, id: @dialy, dialy: { body: @dialy.body, title: @dialy.title }
    assert_redirected_to dialy_path(assigns(:dialy))
  end

  test "should destroy dialy" do
    assert_difference('Dialy.count', -1) do
      delete :destroy, id: @dialy
    end

    assert_redirected_to dialies_path
  end
end

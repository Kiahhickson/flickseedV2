require 'test_helper'

class SwipesControllerTest < ActionController::TestCase
  setup do
    @swipe = swipes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swipe" do
    assert_difference('Swipe.count') do
      post :create, swipe: { favourite: @swipe.favourite, founder_id: @swipe.founder_id, investor_id: @swipe.investor_id }
    end

    assert_redirected_to swipe_path(assigns(:swipe))
  end

  test "should show swipe" do
    get :show, id: @swipe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swipe
    assert_response :success
  end

  test "should update swipe" do
    patch :update, id: @swipe, swipe: { favourite: @swipe.favourite, founder_id: @swipe.founder_id, investor_id: @swipe.investor_id }
    assert_redirected_to swipe_path(assigns(:swipe))
  end

  test "should destroy swipe" do
    assert_difference('Swipe.count', -1) do
      delete :destroy, id: @swipe
    end

    assert_redirected_to swipes_path
  end
end

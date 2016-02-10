require 'test_helper'

class SwipersControllerTest < ActionController::TestCase
  setup do
    @swiper = swipers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:swipers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create swiper" do
    assert_difference('Swiper.count') do
      post :create, swiper: { favourite: @swiper.favourite, founder_id: @swiper.founder_id, investor_id: @swiper.investor_id }
    end

    assert_redirected_to swiper_path(assigns(:swiper))
  end

  test "should show swiper" do
    get :show, id: @swiper
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @swiper
    assert_response :success
  end

  test "should update swiper" do
    patch :update, id: @swiper, swiper: { favourite: @swiper.favourite, founder_id: @swiper.founder_id, investor_id: @swiper.investor_id }
    assert_redirected_to swiper_path(assigns(:swiper))
  end

  test "should destroy swiper" do
    assert_difference('Swiper.count', -1) do
      delete :destroy, id: @swiper
    end

    assert_redirected_to swipers_path
  end
end

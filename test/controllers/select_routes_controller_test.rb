require 'test_helper'

class SelectRoutesControllerTest < ActionController::TestCase
  setup do
    @select_route = select_routes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:select_routes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create select_route" do
    assert_difference('SelectRoute.count') do
      post :create, select_route: { arrival_time: @select_route.arrival_time, destination: @select_route.destination, select_route_id: @select_route.select_route_id, start_time: @select_route.start_time, travel_date: @select_route.travel_date }
    end

    assert_redirected_to select_route_path(assigns(:select_route))
  end

  test "should show select_route" do
    get :show, id: @select_route
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @select_route
    assert_response :success
  end

  test "should update select_route" do
    patch :update, id: @select_route, select_route: { arrival_time: @select_route.arrival_time, destination: @select_route.destination, select_route_id: @select_route.select_route_id, start_time: @select_route.start_time, travel_date: @select_route.travel_date }
    assert_redirected_to select_route_path(assigns(:select_route))
  end

  test "should destroy select_route" do
    assert_difference('SelectRoute.count', -1) do
      delete :destroy, id: @select_route
    end

    assert_redirected_to select_routes_path
  end
end

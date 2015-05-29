require 'test_helper'

class EventSitesControllerTest < ActionController::TestCase
  setup do
    @event_site = event_sites(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_sites)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_site" do
    assert_difference('EventSite.count') do
      post :create, event_site: { access_route: @event_site.access_route, capacity: @event_site.capacity, carpark_type: @event_site.carpark_type, degree_of_longitude: @event_site.degree_of_longitude, degrees_of_latitude: @event_site.degrees_of_latitude, event_site_name: @event_site.event_site_name, host_comment: @event_site.host_comment, near_station: @event_site.near_station, prefecture_type_id: @event_site.prefecture_type_id }
    end

    assert_redirected_to event_site_path(assigns(:event_site))
  end

  test "should show event_site" do
    get :show, id: @event_site
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_site
    assert_response :success
  end

  test "should update event_site" do
    patch :update, id: @event_site, event_site: { access_route: @event_site.access_route, capacity: @event_site.capacity, carpark_type: @event_site.carpark_type, degree_of_longitude: @event_site.degree_of_longitude, degrees_of_latitude: @event_site.degrees_of_latitude, event_site_name: @event_site.event_site_name, host_comment: @event_site.host_comment, near_station: @event_site.near_station, prefecture_type_id: @event_site.prefecture_type_id }
    assert_redirected_to event_site_path(assigns(:event_site))
  end

  test "should destroy event_site" do
    assert_difference('EventSite.count', -1) do
      delete :destroy, id: @event_site
    end

    assert_redirected_to event_sites_path
  end
end

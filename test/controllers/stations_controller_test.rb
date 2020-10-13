require 'test_helper'

class StationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @station = stations(:one)
  end

  test "should get index" do
    get stations_url
    assert_response :success
  end

  test "should get new" do
    get new_station_url
    assert_response :success
  end

  test "should create station" do
    assert_difference('Station.count') do
      post stations_url, params: { station: { apartment_id: @station.apartment_id, station_name1: @station.station_name1, station_name2: @station.station_name2, train_line1: @station.train_line1, train_line2: @station.train_line2, walk_time1: @station.walk_time1, walk_time2: @station.walk_time2 } }
    end

    assert_redirected_to station_url(Station.last)
  end

  test "should show station" do
    get station_url(@station)
    assert_response :success
  end

  test "should get edit" do
    get edit_station_url(@station)
    assert_response :success
  end

  test "should update station" do
    patch station_url(@station), params: { station: { apartment_id: @station.apartment_id, station_name1: @station.station_name1, station_name2: @station.station_name2, train_line1: @station.train_line1, train_line2: @station.train_line2, walk_time1: @station.walk_time1, walk_time2: @station.walk_time2 } }
    assert_redirected_to station_url(@station)
  end

  test "should destroy station" do
    assert_difference('Station.count', -1) do
      delete station_url(@station)
    end

    assert_redirected_to stations_url
  end
end

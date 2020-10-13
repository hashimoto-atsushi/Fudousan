require "application_system_test_case"

class StationsTest < ApplicationSystemTestCase
  setup do
    @station = stations(:one)
  end

  test "visiting the index" do
    visit stations_url
    assert_selector "h1", text: "Stations"
  end

  test "creating a Station" do
    visit stations_url
    click_on "New Station"

    fill_in "Apartment", with: @station.apartment_id
    fill_in "Station name1", with: @station.station_name1
    fill_in "Station name2", with: @station.station_name2
    fill_in "Train line1", with: @station.train_line1
    fill_in "Train line2", with: @station.train_line2
    fill_in "Walk time1", with: @station.walk_time1
    fill_in "Walk time2", with: @station.walk_time2
    click_on "Create Station"

    assert_text "Station was successfully created"
    click_on "Back"
  end

  test "updating a Station" do
    visit stations_url
    click_on "Edit", match: :first

    fill_in "Apartment", with: @station.apartment_id
    fill_in "Station name1", with: @station.station_name1
    fill_in "Station name2", with: @station.station_name2
    fill_in "Train line1", with: @station.train_line1
    fill_in "Train line2", with: @station.train_line2
    fill_in "Walk time1", with: @station.walk_time1
    fill_in "Walk time2", with: @station.walk_time2
    click_on "Update Station"

    assert_text "Station was successfully updated"
    click_on "Back"
  end

  test "destroying a Station" do
    visit stations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Station was successfully destroyed"
  end
end

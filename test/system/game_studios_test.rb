require "application_system_test_case"

class GameStudiosTest < ApplicationSystemTestCase
  setup do
    @game_studio = game_studios(:one)
  end

  test "visiting the index" do
    visit game_studios_url
    assert_selector "h1", text: "Game Studios"
  end

  test "creating a Game studio" do
    visit game_studios_url
    click_on "New Game Studio"

    fill_in "Location", with: @game_studio.location
    fill_in "Name", with: @game_studio.name
    click_on "Create Game studio"

    assert_text "Game studio was successfully created"
    click_on "Back"
  end

  test "updating a Game studio" do
    visit game_studios_url
    click_on "Edit", match: :first

    fill_in "Location", with: @game_studio.location
    fill_in "Name", with: @game_studio.name
    click_on "Update Game studio"

    assert_text "Game studio was successfully updated"
    click_on "Back"
  end

  test "destroying a Game studio" do
    visit game_studios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Game studio was successfully destroyed"
  end
end

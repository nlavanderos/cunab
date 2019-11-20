require "application_system_test_case"

class ForosTest < ApplicationSystemTestCase
  setup do
    @foro = foros(:one)
  end

  test "visiting the index" do
    visit foros_url
    assert_selector "h1", text: "Foros"
  end

  test "creating a Foro" do
    visit foros_url
    click_on "New Foro"

    fill_in "Anuncio", with: @foro.anuncio
    fill_in "Foro", with: @foro.foro
    fill_in "Id", with: @foro.id
    click_on "Create Foro"

    assert_text "Foro was successfully created"
    click_on "Back"
  end

  test "updating a Foro" do
    visit foros_url
    click_on "Edit", match: :first

    fill_in "Anuncio", with: @foro.anuncio
    fill_in "Foro", with: @foro.foro
    fill_in "Id", with: @foro.id
    click_on "Update Foro"

    assert_text "Foro was successfully updated"
    click_on "Back"
  end

  test "destroying a Foro" do
    visit foros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Foro was successfully destroyed"
  end
end

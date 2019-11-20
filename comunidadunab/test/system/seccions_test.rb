require "application_system_test_case"

class SeccionsTest < ApplicationSystemTestCase
  setup do
    @seccion = seccions(:one)
  end

  test "visiting the index" do
    visit seccions_url
    assert_selector "h1", text: "Seccions"
  end

  test "creating a Seccion" do
    visit seccions_url
    click_on "New Seccion"

    fill_in "Id", with: @seccion.id
    fill_in "Seccion", with: @seccion.seccion
    click_on "Create Seccion"

    assert_text "Seccion was successfully created"
    click_on "Back"
  end

  test "updating a Seccion" do
    visit seccions_url
    click_on "Edit", match: :first

    fill_in "Id", with: @seccion.id
    fill_in "Seccion", with: @seccion.seccion
    click_on "Update Seccion"

    assert_text "Seccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Seccion" do
    visit seccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seccion was successfully destroyed"
  end
end

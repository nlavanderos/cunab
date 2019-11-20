require "application_system_test_case"

class ProfesorSeccionsTest < ApplicationSystemTestCase
  setup do
    @profesor_seccion = profesor_seccions(:one)
  end

  test "visiting the index" do
    visit profesor_seccions_url
    assert_selector "h1", text: "Profesor Seccions"
  end

  test "creating a Profesor seccion" do
    visit profesor_seccions_url
    click_on "New Profesor Seccion"

    fill_in "Profesor", with: @profesor_seccion.profesor_id
    fill_in "Seccion", with: @profesor_seccion.seccion_id
    click_on "Create Profesor seccion"

    assert_text "Profesor seccion was successfully created"
    click_on "Back"
  end

  test "updating a Profesor seccion" do
    visit profesor_seccions_url
    click_on "Edit", match: :first

    fill_in "Profesor", with: @profesor_seccion.profesor_id
    fill_in "Seccion", with: @profesor_seccion.seccion_id
    click_on "Update Profesor seccion"

    assert_text "Profesor seccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Profesor seccion" do
    visit profesor_seccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profesor seccion was successfully destroyed"
  end
end

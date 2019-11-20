require "application_system_test_case"

class CursoSeccionsTest < ApplicationSystemTestCase
  setup do
    @curso_seccion = curso_seccions(:one)
  end

  test "visiting the index" do
    visit curso_seccions_url
    assert_selector "h1", text: "Curso Seccions"
  end

  test "creating a Curso seccion" do
    visit curso_seccions_url
    click_on "New Curso Seccion"

    fill_in "Curso", with: @curso_seccion.curso_id
    fill_in "Seccion", with: @curso_seccion.seccion_id
    click_on "Create Curso seccion"

    assert_text "Curso seccion was successfully created"
    click_on "Back"
  end

  test "updating a Curso seccion" do
    visit curso_seccions_url
    click_on "Edit", match: :first

    fill_in "Curso", with: @curso_seccion.curso_id
    fill_in "Seccion", with: @curso_seccion.seccion_id
    click_on "Update Curso seccion"

    assert_text "Curso seccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Curso seccion" do
    visit curso_seccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Curso seccion was successfully destroyed"
  end
end

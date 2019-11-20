require "application_system_test_case"

class AlumnoCursosTest < ApplicationSystemTestCase
  setup do
    @alumno_curso = alumno_cursos(:one)
  end

  test "visiting the index" do
    visit alumno_cursos_url
    assert_selector "h1", text: "Alumno Cursos"
  end

  test "creating a Alumno curso" do
    visit alumno_cursos_url
    click_on "New Alumno Curso"

    fill_in "Alumno", with: @alumno_curso.alumno_id
    fill_in "Curso", with: @alumno_curso.curso_id
    click_on "Create Alumno curso"

    assert_text "Alumno curso was successfully created"
    click_on "Back"
  end

  test "updating a Alumno curso" do
    visit alumno_cursos_url
    click_on "Edit", match: :first

    fill_in "Alumno", with: @alumno_curso.alumno_id
    fill_in "Curso", with: @alumno_curso.curso_id
    click_on "Update Alumno curso"

    assert_text "Alumno curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Alumno curso" do
    visit alumno_cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alumno curso was successfully destroyed"
  end
end

require "application_system_test_case"

class UsuarioCursosTest < ApplicationSystemTestCase
  setup do
    @usuario_curso = usuario_cursos(:one)
  end

  test "visiting the index" do
    visit usuario_cursos_url
    assert_selector "h1", text: "Usuario Cursos"
  end

  test "creating a Usuario curso" do
    visit usuario_cursos_url
    click_on "New Usuario Curso"

    fill_in "Usuario", with: @usuario_curso.alumno_id
    fill_in "Curso", with: @usuario_curso.curso_id
    click_on "Create Alumno curso"

    assert_text "Usuario curso was successfully created"
    click_on "Back"
  end

  test "updating a Usuario curso" do
    visit usuario_cursos_url
    click_on "Edit", match: :first

    fill_in "Usuario", with: @usuario_curso.usuario_id
    fill_in "Curso", with: @usuario_curso.curso_id
    click_on "Update Usuario curso"

    assert_text "Usuario curso was successfully updated"
    click_on "Back"
  end

  test "destroying a Usuario curso" do
    visit usuario_cursos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Usuario curso was successfully destroyed"
  end
end

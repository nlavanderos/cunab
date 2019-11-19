require "application_system_test_case"

class AlumnosTest < ApplicationSystemTestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "visiting the index" do
    visit alumnos_url
    assert_selector "h1", text: "Alumnos"
  end

  test "creating a Alumno" do
    visit alumnos_url
    click_on "New Alumno"

    fill_in "Apellido", with: @alumno.apellido
    fill_in "Email", with: @alumno.email
    fill_in "Id", with: @alumno.id
    fill_in "Nombre", with: @alumno.nombre
    check "Tipo" if @alumno.tipo
    click_on "Create Alumno"

    assert_text "Alumno was successfully created"
    click_on "Back"
  end

  test "updating a Alumno" do
    visit alumnos_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @alumno.apellido
    fill_in "Email", with: @alumno.email
    fill_in "Id", with: @alumno.id
    fill_in "Nombre", with: @alumno.nombre
    check "Tipo" if @alumno.tipo
    click_on "Update Alumno"

    assert_text "Alumno was successfully updated"
    click_on "Back"
  end

  test "destroying a Alumno" do
    visit alumnos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Alumno was successfully destroyed"
  end
end

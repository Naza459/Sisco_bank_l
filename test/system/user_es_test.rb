require "application_system_test_case"

class UserEsTest < ApplicationSystemTestCase
  setup do
    @user_e = user_es(:one)
  end

  test "visiting the index" do
    visit user_es_url
    assert_selector "h1", text: "User es"
  end

  test "should create user e" do
    visit user_es_url
    click_on "New user e"

    fill_in "Correo electronico", with: @user_e.correo_electronico
    fill_in "Fecha inicial", with: @user_e.fecha_inicial
    fill_in "Fecha vencimiento", with: @user_e.fecha_vencimiento
    fill_in "Nombre", with: @user_e.nombre
    fill_in "Numero documento", with: @user_e.numero_documento
    fill_in "Telefono principal", with: @user_e.telefono_principal
    fill_in "Telefono secundario", with: @user_e.telefono_secundario
    fill_in "Tipo persona", with: @user_e.tipo_persona
    click_on "Create User e"

    assert_text "User e was successfully created"
    click_on "Back"
  end

  test "should update User e" do
    visit user_e_url(@user_e)
    click_on "Edit this user e", match: :first

    fill_in "Correo electronico", with: @user_e.correo_electronico
    fill_in "Fecha inicial", with: @user_e.fecha_inicial
    fill_in "Fecha vencimiento", with: @user_e.fecha_vencimiento
    fill_in "Nombre", with: @user_e.nombre
    fill_in "Numero documento", with: @user_e.numero_documento
    fill_in "Telefono principal", with: @user_e.telefono_principal
    fill_in "Telefono secundario", with: @user_e.telefono_secundario
    fill_in "Tipo persona", with: @user_e.tipo_persona
    click_on "Update User e"

    assert_text "User e was successfully updated"
    click_on "Back"
  end

  test "should destroy User e" do
    visit user_e_url(@user_e)
    click_on "Destroy this user e", match: :first

    assert_text "User e was successfully destroyed"
  end
end

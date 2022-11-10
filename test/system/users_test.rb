require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "should create user" do
    visit users_url
    click_on "New user"

    fill_in "Integer", with: @user.Integer
    fill_in "Text", with: @user.Text
    fill_in "Correo electronico", with: @user.correo_electronico
    fill_in "Datetime", with: @user.datetime
    fill_in "Fecha inicial", with: @user.fecha_inicial
    fill_in "Fecha vencimiento", with: @user.fecha_vencimiento
    fill_in "Nombre", with: @user.nombre
    fill_in "Numero documento", with: @user.numero_documento
    fill_in "Telefono principal", with: @user.telefono_principal
    fill_in "Telefono secundario", with: @user.telefono_secundario
    fill_in "Tipo persona", with: @user.tipo_persona
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "should update User" do
    visit user_url(@user)
    click_on "Edit this user", match: :first

    fill_in "Integer", with: @user.Integer
    fill_in "Text", with: @user.Text
    fill_in "Correo electronico", with: @user.correo_electronico
    fill_in "Datetime", with: @user.datetime
    fill_in "Fecha inicial", with: @user.fecha_inicial
    fill_in "Fecha vencimiento", with: @user.fecha_vencimiento
    fill_in "Nombre", with: @user.nombre
    fill_in "Numero documento", with: @user.numero_documento
    fill_in "Telefono principal", with: @user.telefono_principal
    fill_in "Telefono secundario", with: @user.telefono_secundario
    fill_in "Tipo persona", with: @user.tipo_persona
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "should destroy User" do
    visit user_url(@user)
    click_on "Destroy this user", match: :first

    assert_text "User was successfully destroyed"
  end
end

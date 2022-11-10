require "application_system_test_case"

class UserTsTest < ApplicationSystemTestCase
  setup do
    @user_t = user_ts(:one)
  end

  test "visiting the index" do
    visit user_ts_url
    assert_selector "h1", text: "User ts"
  end

  test "should create user t" do
    visit user_ts_url
    click_on "New user t"

    fill_in "Correo electronico", with: @user_t.correo_electronico
    fill_in "Fecha inicial", with: @user_t.fecha_inicial
    fill_in "Fecha vencimiento", with: @user_t.fecha_vencimiento
    fill_in "Nombre", with: @user_t.nombre
    fill_in "Numero documento", with: @user_t.numero_documento
    fill_in "Telefono principal", with: @user_t.telefono_principal
    fill_in "Telefono secundario", with: @user_t.telefono_secundario
    fill_in "Tipo persona", with: @user_t.tipo_persona
    click_on "Create User t"

    assert_text "User t was successfully created"
    click_on "Back"
  end

  test "should update User t" do
    visit user_t_url(@user_t)
    click_on "Edit this user t", match: :first

    fill_in "Correo electronico", with: @user_t.correo_electronico
    fill_in "Fecha inicial", with: @user_t.fecha_inicial
    fill_in "Fecha vencimiento", with: @user_t.fecha_vencimiento
    fill_in "Nombre", with: @user_t.nombre
    fill_in "Numero documento", with: @user_t.numero_documento
    fill_in "Telefono principal", with: @user_t.telefono_principal
    fill_in "Telefono secundario", with: @user_t.telefono_secundario
    fill_in "Tipo persona", with: @user_t.tipo_persona
    click_on "Update User t"

    assert_text "User t was successfully updated"
    click_on "Back"
  end

  test "should destroy User t" do
    visit user_t_url(@user_t)
    click_on "Destroy this user t", match: :first

    assert_text "User t was successfully destroyed"
  end
end

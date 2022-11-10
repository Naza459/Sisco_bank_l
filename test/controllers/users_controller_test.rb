require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { Integer: @user.Integer, Text: @user.Text, correo_electronico: @user.correo_electronico, datetime: @user.datetime, fecha_inicial: @user.fecha_inicial, fecha_vencimiento: @user.fecha_vencimiento, nombre: @user.nombre, numero_documento: @user.numero_documento, telefono_principal: @user.telefono_principal, telefono_secundario: @user.telefono_secundario, tipo_persona: @user.tipo_persona } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { Integer: @user.Integer, Text: @user.Text, correo_electronico: @user.correo_electronico, datetime: @user.datetime, fecha_inicial: @user.fecha_inicial, fecha_vencimiento: @user.fecha_vencimiento, nombre: @user.nombre, numero_documento: @user.numero_documento, telefono_principal: @user.telefono_principal, telefono_secundario: @user.telefono_secundario, tipo_persona: @user.tipo_persona } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference("User.count", -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end

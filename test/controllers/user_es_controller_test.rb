require "test_helper"

class UserEsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_e = user_es(:one)
  end

  test "should get index" do
    get user_es_url
    assert_response :success
  end

  test "should get new" do
    get new_user_e_url
    assert_response :success
  end

  test "should create user_e" do
    assert_difference("UserE.count") do
      post user_es_url, params: { user_e: { correo_electronico: @user_e.correo_electronico, fecha_inicial: @user_e.fecha_inicial, fecha_vencimiento: @user_e.fecha_vencimiento, nombre: @user_e.nombre, numero_documento: @user_e.numero_documento, telefono_principal: @user_e.telefono_principal, telefono_secundario: @user_e.telefono_secundario, tipo_persona: @user_e.tipo_persona } }
    end

    assert_redirected_to user_e_url(UserE.last)
  end

  test "should show user_e" do
    get user_e_url(@user_e)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_e_url(@user_e)
    assert_response :success
  end

  test "should update user_e" do
    patch user_e_url(@user_e), params: { user_e: { correo_electronico: @user_e.correo_electronico, fecha_inicial: @user_e.fecha_inicial, fecha_vencimiento: @user_e.fecha_vencimiento, nombre: @user_e.nombre, numero_documento: @user_e.numero_documento, telefono_principal: @user_e.telefono_principal, telefono_secundario: @user_e.telefono_secundario, tipo_persona: @user_e.tipo_persona } }
    assert_redirected_to user_e_url(@user_e)
  end

  test "should destroy user_e" do
    assert_difference("UserE.count", -1) do
      delete user_e_url(@user_e)
    end

    assert_redirected_to user_es_url
  end
end

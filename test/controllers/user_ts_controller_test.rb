require "test_helper"

class UserTsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_t = user_ts(:one)
  end

  test "should get index" do
    get user_ts_url
    assert_response :success
  end

  test "should get new" do
    get new_user_t_url
    assert_response :success
  end

  test "should create user_t" do
    assert_difference("UserT.count") do
      post user_ts_url, params: { user_t: { correo_electronico: @user_t.correo_electronico, fecha_inicial: @user_t.fecha_inicial, fecha_vencimiento: @user_t.fecha_vencimiento, nombre: @user_t.nombre, numero_documento: @user_t.numero_documento, telefono_principal: @user_t.telefono_principal, telefono_secundario: @user_t.telefono_secundario, tipo_persona: @user_t.tipo_persona } }
    end

    assert_redirected_to user_t_url(UserT.last)
  end

  test "should show user_t" do
    get user_t_url(@user_t)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_t_url(@user_t)
    assert_response :success
  end

  test "should update user_t" do
    patch user_t_url(@user_t), params: { user_t: { correo_electronico: @user_t.correo_electronico, fecha_inicial: @user_t.fecha_inicial, fecha_vencimiento: @user_t.fecha_vencimiento, nombre: @user_t.nombre, numero_documento: @user_t.numero_documento, telefono_principal: @user_t.telefono_principal, telefono_secundario: @user_t.telefono_secundario, tipo_persona: @user_t.tipo_persona } }
    assert_redirected_to user_t_url(@user_t)
  end

  test "should destroy user_t" do
    assert_difference("UserT.count", -1) do
      delete user_t_url(@user_t)
    end

    assert_redirected_to user_ts_url
  end
end

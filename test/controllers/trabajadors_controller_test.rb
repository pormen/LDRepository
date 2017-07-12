require 'test_helper'

class TrabajadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trabajador = trabajadors(:one)
  end

  test "should get index" do
    get trabajadors_url
    assert_response :success
  end

  test "should get new" do
    get new_trabajador_url
    assert_response :success
  end

  test "should create trabajador" do
    assert_difference('Trabajador.count') do
      post trabajadors_url, params: { trabajador: { centrocosto_id: @trabajador.centrocosto_id, nombre: @trabajador.nombre, rut: @trabajador.rut } }
    end

    assert_redirected_to trabajador_url(Trabajador.last)
  end

  test "should show trabajador" do
    get trabajador_url(@trabajador)
    assert_response :success
  end

  test "should get edit" do
    get edit_trabajador_url(@trabajador)
    assert_response :success
  end

  test "should update trabajador" do
    patch trabajador_url(@trabajador), params: { trabajador: { centrocosto_id: @trabajador.centrocosto_id, nombre: @trabajador.nombre, rut: @trabajador.rut } }
    assert_redirected_to trabajador_url(@trabajador)
  end

  test "should destroy trabajador" do
    assert_difference('Trabajador.count', -1) do
      delete trabajador_url(@trabajador)
    end

    assert_redirected_to trabajadors_url
  end
end

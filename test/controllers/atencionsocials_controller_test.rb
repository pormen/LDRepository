require 'test_helper'

class AtencionsocialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atencionsocial = atencionsocials(:one)
  end

  test "should get index" do
    get atencionsocials_url
    assert_response :success
  end

  test "should get new" do
    get new_atencionsocial_url
    assert_response :success
  end

  test "should create atencionsocial" do
    assert_difference('Atencionsocial.count') do
      post atencionsocials_url, params: { atencionsocial: { apellidomaterno: @atencionsocial.apellidomaterno, apellidopaterno: @atencionsocial.apellidopaterno, atencion: @atencionsocial.atencion, benefit_id: @atencionsocial.benefit_id, descripcion: @atencionsocial.descripcion, estado: @atencionsocial.estado, fecha: @atencionsocial.fecha, nombre: @atencionsocial.nombre, obra: @atencionsocial.obra, rut: @atencionsocial.rut, subcontrato: @atencionsocial.subcontrato, supervisor: @atencionsocial.supervisor, telefono: @atencionsocial.telefono, tipoconsulta: @atencionsocial.tipoconsulta } }
    end

    assert_redirected_to atencionsocial_url(Atencionsocial.last)
  end

  test "should show atencionsocial" do
    get atencionsocial_url(@atencionsocial)
    assert_response :success
  end

  test "should get edit" do
    get edit_atencionsocial_url(@atencionsocial)
    assert_response :success
  end

  test "should update atencionsocial" do
    patch atencionsocial_url(@atencionsocial), params: { atencionsocial: { apellidomaterno: @atencionsocial.apellidomaterno, apellidopaterno: @atencionsocial.apellidopaterno, atencion: @atencionsocial.atencion, benefit_id: @atencionsocial.benefit_id, descripcion: @atencionsocial.descripcion, estado: @atencionsocial.estado, fecha: @atencionsocial.fecha, nombre: @atencionsocial.nombre, obra: @atencionsocial.obra, rut: @atencionsocial.rut, subcontrato: @atencionsocial.subcontrato, supervisor: @atencionsocial.supervisor, telefono: @atencionsocial.telefono, tipoconsulta: @atencionsocial.tipoconsulta } }
    assert_redirected_to atencionsocial_url(@atencionsocial)
  end

  test "should destroy atencionsocial" do
    assert_difference('Atencionsocial.count', -1) do
      delete atencionsocial_url(@atencionsocial)
    end

    assert_redirected_to atencionsocials_url
  end
end

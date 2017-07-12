require 'test_helper'

class CentrocostosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @centrocosto = centrocostos(:one)
  end

  test "should get index" do
    get centrocostos_url
    assert_response :success
  end

  test "should get new" do
    get new_centrocosto_url
    assert_response :success
  end

  test "should create centrocosto" do
    assert_difference('Centrocosto.count') do
      post centrocostos_url, params: { centrocosto: { codigo: @centrocosto.codigo } }
    end

    assert_redirected_to centrocosto_url(Centrocosto.last)
  end

  test "should show centrocosto" do
    get centrocosto_url(@centrocosto)
    assert_response :success
  end

  test "should get edit" do
    get edit_centrocosto_url(@centrocosto)
    assert_response :success
  end

  test "should update centrocosto" do
    patch centrocosto_url(@centrocosto), params: { centrocosto: { codigo: @centrocosto.codigo } }
    assert_redirected_to centrocosto_url(@centrocosto)
  end

  test "should destroy centrocosto" do
    assert_difference('Centrocosto.count', -1) do
      delete centrocosto_url(@centrocosto)
    end

    assert_redirected_to centrocostos_url
  end
end

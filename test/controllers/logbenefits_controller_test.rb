require 'test_helper'

class LogbenefitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @logbenefit = logbenefits(:one)
  end

  test "should get index" do
    get logbenefits_url
    assert_response :success
  end

  test "should get new" do
    get new_logbenefit_url
    assert_response :success
  end

  test "should create logbenefit" do
    assert_difference('Logbenefit.count') do
      post logbenefits_url, params: { logbenefit: { assignbenefit_id: @logbenefit.assignbenefit_id } }
    end

    assert_redirected_to logbenefit_url(Logbenefit.last)
  end

  test "should show logbenefit" do
    get logbenefit_url(@logbenefit)
    assert_response :success
  end

  test "should get edit" do
    get edit_logbenefit_url(@logbenefit)
    assert_response :success
  end

  test "should update logbenefit" do
    patch logbenefit_url(@logbenefit), params: { logbenefit: { assignbenefit_id: @logbenefit.assignbenefit_id } }
    assert_redirected_to logbenefit_url(@logbenefit)
  end

  test "should destroy logbenefit" do
    assert_difference('Logbenefit.count', -1) do
      delete logbenefit_url(@logbenefit)
    end

    assert_redirected_to logbenefits_url
  end
end

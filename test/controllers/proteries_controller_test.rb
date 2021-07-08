require 'test_helper'

class ProteriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @protery = proteries(:one)
  end

  test "should get index" do
    get proteries_url
    assert_response :success
  end

  test "should get new" do
    get new_protery_url
    assert_response :success
  end

  test "should create protery" do
    assert_difference('Protery.count') do
      post proteries_url, params: { protery: { address: @protery.address, building_age: @protery.building_age, property: @protery.property, remarks: @protery.remarks, rent: @protery.rent } }
    end

    assert_redirected_to protery_url(Protery.last)
  end

  test "should show protery" do
    get protery_url(@protery)
    assert_response :success
  end

  test "should get edit" do
    get edit_protery_url(@protery)
    assert_response :success
  end

  test "should update protery" do
    patch protery_url(@protery), params: { protery: { address: @protery.address, building_age: @protery.building_age, property: @protery.property, remarks: @protery.remarks, rent: @protery.rent } }
    assert_redirected_to protery_url(@protery)
  end

  test "should destroy protery" do
    assert_difference('Protery.count', -1) do
      delete protery_url(@protery)
    end

    assert_redirected_to proteries_url
  end
end

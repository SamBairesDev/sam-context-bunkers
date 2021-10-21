require "test_helper"

class LiquidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liquid = liquids(:one)
  end

  test "should get index" do
    get liquids_url
    assert_response :success
  end

  test "should get new" do
    get new_liquid_url
    assert_response :success
  end

  test "should create liquid" do
    assert_difference('Liquid.count') do
      post liquids_url, params: { liquid: { brand: @liquid.brand, flavor: @liquid.flavor, name: @liquid.name, price: @liquid.price, size: @liquid.size, strength: @liquid.strength } }
    end

    assert_redirected_to liquid_url(Liquid.last)
  end

  test "should show liquid" do
    get liquid_url(@liquid)
    assert_response :success
  end

  test "should get edit" do
    get edit_liquid_url(@liquid)
    assert_response :success
  end

  test "should update liquid" do
    patch liquid_url(@liquid), params: { liquid: { brand: @liquid.brand, flavor: @liquid.flavor, name: @liquid.name, price: @liquid.price, size: @liquid.size, strength: @liquid.strength } }
    assert_redirected_to liquid_url(@liquid)
  end

  test "should destroy liquid" do
    assert_difference('Liquid.count', -1) do
      delete liquid_url(@liquid)
    end

    assert_redirected_to liquids_url
  end
end

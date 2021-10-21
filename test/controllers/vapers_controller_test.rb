require "test_helper"

class VapersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vaper = vapers(:one)
  end

  test "should get index" do
    get vapers_url
    assert_response :success
  end

  test "should get new" do
    get new_vaper_url
    assert_response :success
  end

  test "should create vaper" do
    assert_difference('Vaper.count') do
      post vapers_url, params: { vaper: { brand: @vaper.brand, name: @vaper.name, price: @vaper.price, waranty_time: @vaper.waranty_time } }
    end

    assert_redirected_to vaper_url(Vaper.last)
  end

  test "should show vaper" do
    get vaper_url(@vaper)
    assert_response :success
  end

  test "should get edit" do
    get edit_vaper_url(@vaper)
    assert_response :success
  end

  test "should update vaper" do
    patch vaper_url(@vaper), params: { vaper: { brand: @vaper.brand, name: @vaper.name, price: @vaper.price, waranty_time: @vaper.waranty_time } }
    assert_redirected_to vaper_url(@vaper)
  end

  test "should destroy vaper" do
    assert_difference('Vaper.count', -1) do
      delete vaper_url(@vaper)
    end

    assert_redirected_to vapers_url
  end
end

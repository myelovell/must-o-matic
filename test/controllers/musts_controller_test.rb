require "test_helper"

class MustsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @must = musts(:one)
  end

  test "should get index" do
    get musts_url
    assert_response :success
  end

  test "should get new" do
    get new_must_url
    assert_response :success
  end

  test "should create must" do
    assert_difference('Must.count') do
      post musts_url, params: { must: { manufacturer: @must.manufacturer, name: @must.name, price: @must.price, volume: @must.volume } }
    end

    assert_redirected_to must_url(Must.last)
  end

  test "should show must" do
    get must_url(@must)
    assert_response :success
  end

  test "should get edit" do
    get edit_must_url(@must)
    assert_response :success
  end

  test "should update must" do
    patch must_url(@must), params: { must: { manufacturer: @must.manufacturer, name: @must.name, price: @must.price, volume: @must.volume } }
    assert_redirected_to must_url(@must)
  end

  test "should destroy must" do
    assert_difference('Must.count', -1) do
      delete must_url(@must)
    end

    assert_redirected_to musts_url
  end
end

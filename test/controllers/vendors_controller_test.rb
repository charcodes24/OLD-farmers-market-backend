require "test_helper"

class VendorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vendor = vendors(:one)
  end

  test "should get index" do
    get vendors_url, as: :json
    assert_response :success
  end

  test "should create vendor" do
    assert_difference('Vendor.count') do
      post vendors_url, params: { vendor: { category: @vendor.category, description: @vendor.description, name: @vendor.name, password_digest: @vendor.password_digest, username: @vendor.username } }, as: :json
    end

    assert_response 201
  end

  test "should show vendor" do
    get vendor_url(@vendor), as: :json
    assert_response :success
  end

  test "should update vendor" do
    patch vendor_url(@vendor), params: { vendor: { category: @vendor.category, description: @vendor.description, name: @vendor.name, password_digest: @vendor.password_digest, username: @vendor.username } }, as: :json
    assert_response 200
  end

  test "should destroy vendor" do
    assert_difference('Vendor.count', -1) do
      delete vendor_url(@vendor), as: :json
    end

    assert_response 204
  end
end

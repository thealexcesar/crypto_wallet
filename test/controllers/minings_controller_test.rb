require "test_helper"

class MiningsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mining = minings(:one)
  end

  test "should get index" do
    get minings_url
    assert_response :success
  end

  test "should get new" do
    get new_mining_url
    assert_response :success
  end

  test "should create mining" do
    assert_difference('Mining.count') do
      post minings_url, params: { mining: { acronym: @mining.acronym, description: @mining.description } }
    end

    assert_redirected_to mining_url(Mining.last)
  end

  test "should show mining" do
    get mining_url(@mining)
    assert_response :success
  end

  test "should get edit" do
    get edit_mining_url(@mining)
    assert_response :success
  end

  test "should update mining" do
    patch mining_url(@mining), params: { mining: { acronym: @mining.acronym, description: @mining.description } }
    assert_redirected_to mining_url(@mining)
  end

  test "should destroy mining" do
    assert_difference('Mining.count', -1) do
      delete mining_url(@mining)
    end

    assert_redirected_to minings_url
  end
end

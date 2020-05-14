require 'test_helper'

class ClocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @clock = clocks(:one)
  end

  test "should get index" do
    get clocks_url
    assert_response :success
  end

  test "should get new" do
    get new_clock_url
    assert_response :success
  end

  test "should create clock" do
    assert_difference('Clock.count') do
      post clocks_url, params: { clock: { group_id: @clock.group_id, hour: @clock.hour, name: @clock.name, user_id: @clock.user_id } }
    end

    assert_redirected_to clock_url(Clock.last)
  end

  test "should show clock" do
    get clock_url(@clock)
    assert_response :success
  end

  test "should get edit" do
    get edit_clock_url(@clock)
    assert_response :success
  end

  test "should update clock" do
    patch clock_url(@clock), params: { clock: { group_id: @clock.group_id, hour: @clock.hour, name: @clock.name, user_id: @clock.user_id } }
    assert_redirected_to clock_url(@clock)
  end

  test "should destroy clock" do
    assert_difference('Clock.count', -1) do
      delete clock_url(@clock)
    end

    assert_redirected_to clocks_url
  end
end

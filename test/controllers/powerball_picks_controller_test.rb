require 'test_helper'

class PowerballPicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @powerball_pick = powerball_picks(:one)
  end

  test "should get index" do
    get powerball_picks_url
    assert_response :success
  end

  test "should get new" do
    get new_powerball_pick_url
    assert_response :success
  end

  test "should create powerball_pick" do
    assert_difference('PowerballPick.count') do
      post powerball_picks_url, params: { powerball_pick: { draw_on: @powerball_pick.draw_on, powerball: @powerball_pick.powerball, user_id: @powerball_pick.user_id } }
    end

    assert_redirected_to powerball_pick_url(PowerballPick.last)
  end

  test "should show powerball_pick" do
    get powerball_pick_url(@powerball_pick)
    assert_response :success
  end

  test "should get edit" do
    get edit_powerball_pick_url(@powerball_pick)
    assert_response :success
  end

  test "should update powerball_pick" do
    patch powerball_pick_url(@powerball_pick), params: { powerball_pick: { draw_on: @powerball_pick.draw_on, powerball: @powerball_pick.powerball, user_id: @powerball_pick.user_id } }
    assert_redirected_to powerball_pick_url(@powerball_pick)
  end

  test "should destroy powerball_pick" do
    assert_difference('PowerballPick.count', -1) do
      delete powerball_pick_url(@powerball_pick)
    end

    assert_redirected_to powerball_picks_url
  end
end

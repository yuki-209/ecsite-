require 'test_helper'

class WeaponControllerTest < ActionDispatch::IntegrationTest
  test "should get sword" do
    get weapon_sword_url
    assert_response :success
  end

  test "should get rance" do
    get weapon_rance_url
    assert_response :success
  end

  test "should get axe" do
    get weapon_axe_url
    assert_response :success
  end

  test "should get hammer" do
    get weapon_hammer_url
    assert_response :success
  end

  test "should get wand" do
    get weapon_wand_url
    assert_response :success
  end

  test "should get bow" do
    get weapon_bow_url
    assert_response :success
  end

  test "should get armor" do
    get weapon_armor_url
    assert_response :success
  end

  test "should get other" do
    get weapon_other_url
    assert_response :success
  end

  test "should get index" do
    get weapon_index_url
    assert_response :success
  end

end

require 'test_helper'

class ShogisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shogi = shogis(:one)
  end

  test "should get index" do
    get shogis_url
    assert_response :success
  end

  test "should get new" do
    get new_shogi_url
    assert_response :success
  end

  test "should create shogi" do
    assert_difference('Shogi.count') do
      post shogis_url, params: { shogi: { FavoriteStrategy: @shogi.FavoriteStrategy, Player: @shogi.Player, picture: @shogi.picture } }
    end

    assert_redirected_to shogi_url(Shogi.last)
  end

  test "should show shogi" do
    get shogi_url(@shogi)
    assert_response :success
  end

  test "should get edit" do
    get edit_shogi_url(@shogi)
    assert_response :success
  end

  test "should update shogi" do
    patch shogi_url(@shogi), params: { shogi: { FavoriteStrategy: @shogi.FavoriteStrategy, Player: @shogi.Player, picture: @shogi.picture } }
    assert_redirected_to shogi_url(@shogi)
  end

  test "should destroy shogi" do
    assert_difference('Shogi.count', -1) do
      delete shogi_url(@shogi)
    end

    assert_redirected_to shogis_url
  end
end

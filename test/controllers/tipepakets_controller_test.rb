require 'test_helper'

class TipepaketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipepaket = tipepakets(:one)
  end

  test "should get index" do
    get tipepakets_url
    assert_response :success
  end

  test "should get new" do
    get new_tipepaket_url
    assert_response :success
  end

  test "should create tipepaket" do
    assert_difference('Tipepaket.count') do
      post tipepakets_url, params: { tipepaket: { exclude: @tipepaket.exclude, harga: @tipepaket.harga, include: @tipepaket.include, jenispaket: @tipepaket.jenispaket, namaaktifitas: @tipepaket.namaaktifitas } }
    end

    assert_redirected_to tipepaket_url(Tipepaket.last)
  end

  test "should show tipepaket" do
    get tipepaket_url(@tipepaket)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipepaket_url(@tipepaket)
    assert_response :success
  end

  test "should update tipepaket" do
    patch tipepaket_url(@tipepaket), params: { tipepaket: { exclude: @tipepaket.exclude, harga: @tipepaket.harga, include: @tipepaket.include, jenispaket: @tipepaket.jenispaket, namaaktifitas: @tipepaket.namaaktifitas } }
    assert_redirected_to tipepaket_url(@tipepaket)
  end

  test "should destroy tipepaket" do
    assert_difference('Tipepaket.count', -1) do
      delete tipepaket_url(@tipepaket)
    end

    assert_redirected_to tipepakets_url
  end
end

require 'test_helper'

class TamusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tamu = tamus(:one)
  end

  test "should get index" do
    get tamus_url
    assert_response :success
  end

  test "should get new" do
    get new_tamu_url
    assert_response :success
  end

  test "should create tamu" do
    assert_difference('Tamu.count') do
      post tamus_url, params: { tamu: { email: @tamu.email, hotel: @tamu.hotel, jenispaket: @tamu.jenispaket, kodebooking: @tamu.kodebooking, namaaktifitas: @tamu.namaaktifitas, namatamu: @tamu.namatamu, negara: @tamu.negara, note: @tamu.note, qty: @tamu.qty, supplier: @tamu.supplier, tanggal: @tamu.tanggal, telp: @tamu.telp } }
    end

    assert_redirected_to tamu_url(Tamu.last)
  end

  test "should show tamu" do
    get tamu_url(@tamu)
    assert_response :success
  end

  test "should get edit" do
    get edit_tamu_url(@tamu)
    assert_response :success
  end

  test "should update tamu" do
    patch tamu_url(@tamu), params: { tamu: { email: @tamu.email, hotel: @tamu.hotel, jenispaket: @tamu.jenispaket, kodebooking: @tamu.kodebooking, namaaktifitas: @tamu.namaaktifitas, namatamu: @tamu.namatamu, negara: @tamu.negara, note: @tamu.note, qty: @tamu.qty, supplier: @tamu.supplier, tanggal: @tamu.tanggal, telp: @tamu.telp } }
    assert_redirected_to tamu_url(@tamu)
  end

  test "should destroy tamu" do
    assert_difference('Tamu.count', -1) do
      delete tamu_url(@tamu)
    end

    assert_redirected_to tamus_url
  end
end

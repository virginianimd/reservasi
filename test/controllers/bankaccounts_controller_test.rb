require 'test_helper'

class BankaccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bankaccount = bankaccounts(:one)
  end

  test "should get index" do
    get bankaccounts_url
    assert_response :success
  end

  test "should get new" do
    get new_bankaccount_url
    assert_response :success
  end

  test "should create bankaccount" do
    assert_difference('Bankaccount.count') do
      post bankaccounts_url, params: { bankaccount: { namaakun: @bankaccount.namaakun, namabank: @bankaccount.namabank, nomorakun: @bankaccount.nomorakun, swiftcode: @bankaccount.swiftcode } }
    end

    assert_redirected_to bankaccount_url(Bankaccount.last)
  end

  test "should show bankaccount" do
    get bankaccount_url(@bankaccount)
    assert_response :success
  end

  test "should get edit" do
    get edit_bankaccount_url(@bankaccount)
    assert_response :success
  end

  test "should update bankaccount" do
    patch bankaccount_url(@bankaccount), params: { bankaccount: { namaakun: @bankaccount.namaakun, namabank: @bankaccount.namabank, nomorakun: @bankaccount.nomorakun, swiftcode: @bankaccount.swiftcode } }
    assert_redirected_to bankaccount_url(@bankaccount)
  end

  test "should destroy bankaccount" do
    assert_difference('Bankaccount.count', -1) do
      delete bankaccount_url(@bankaccount)
    end

    assert_redirected_to bankaccounts_url
  end
end

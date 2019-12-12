require 'test_helper'

class InvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice = invoices(:one)
  end

  test "should get index" do
    get invoices_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_url
    assert_response :success
  end

  test "should create invoice" do
    assert_difference('Invoice.count') do
      post invoices_url, params: { invoice: { desk: @invoice.desk, namaaktifitas: @invoice.namaaktifitas, namaakun: @invoice.namaakun, namatamu: @invoice.namatamu, noinvoice: @invoice.noinvoice, nomorakun: @invoice.nomorakun, paymentdue: @invoice.paymentdue, qty: @invoice.qty, supplier: @invoice.supplier, swiftcode: @invoice.swiftcode, tanggal: @invoice.tanggal, telp: @invoice.telp, tglaktifitas: @invoice.tglaktifitas, totalamount: @invoice.totalamount } }
    end

    assert_redirected_to invoice_url(Invoice.last)
  end

  test "should show invoice" do
    get invoice_url(@invoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_url(@invoice)
    assert_response :success
  end

  test "should update invoice" do
    patch invoice_url(@invoice), params: { invoice: { desk: @invoice.desk, namaaktifitas: @invoice.namaaktifitas, namaakun: @invoice.namaakun, namatamu: @invoice.namatamu, noinvoice: @invoice.noinvoice, nomorakun: @invoice.nomorakun, paymentdue: @invoice.paymentdue, qty: @invoice.qty, supplier: @invoice.supplier, swiftcode: @invoice.swiftcode, tanggal: @invoice.tanggal, telp: @invoice.telp, tglaktifitas: @invoice.tglaktifitas, totalamount: @invoice.totalamount } }
    assert_redirected_to invoice_url(@invoice)
  end

  test "should destroy invoice" do
    assert_difference('Invoice.count', -1) do
      delete invoice_url(@invoice)
    end

    assert_redirected_to invoices_url
  end
end

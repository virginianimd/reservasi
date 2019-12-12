require "application_system_test_case"

class InvoicesTest < ApplicationSystemTestCase
  setup do
    @invoice = invoices(:one)
  end

  test "visiting the index" do
    visit invoices_url
    assert_selector "h1", text: "Invoices"
  end

  test "creating a Invoice" do
    visit invoices_url
    click_on "New Invoice"

    fill_in "Desk", with: @invoice.desk
    fill_in "Namaaktifitas", with: @invoice.namaaktifitas
    fill_in "Namaakun", with: @invoice.namaakun
    fill_in "Namatamu", with: @invoice.namatamu
    fill_in "Noinvoice", with: @invoice.noinvoice
    fill_in "Nomorakun", with: @invoice.nomorakun
    fill_in "Paymentdue", with: @invoice.paymentdue
    fill_in "Qty", with: @invoice.qty
    fill_in "Supplier", with: @invoice.supplier
    fill_in "Swiftcode", with: @invoice.swiftcode
    fill_in "Tanggal", with: @invoice.tanggal
    fill_in "Telp", with: @invoice.telp
    fill_in "Tglaktifitas", with: @invoice.tglaktifitas
    fill_in "Totalamount", with: @invoice.totalamount
    click_on "Create Invoice"

    assert_text "Invoice was successfully created"
    click_on "Back"
  end

  test "updating a Invoice" do
    visit invoices_url
    click_on "Edit", match: :first

    fill_in "Desk", with: @invoice.desk
    fill_in "Namaaktifitas", with: @invoice.namaaktifitas
    fill_in "Namaakun", with: @invoice.namaakun
    fill_in "Namatamu", with: @invoice.namatamu
    fill_in "Noinvoice", with: @invoice.noinvoice
    fill_in "Nomorakun", with: @invoice.nomorakun
    fill_in "Paymentdue", with: @invoice.paymentdue
    fill_in "Qty", with: @invoice.qty
    fill_in "Supplier", with: @invoice.supplier
    fill_in "Swiftcode", with: @invoice.swiftcode
    fill_in "Tanggal", with: @invoice.tanggal
    fill_in "Telp", with: @invoice.telp
    fill_in "Tglaktifitas", with: @invoice.tglaktifitas
    fill_in "Totalamount", with: @invoice.totalamount
    click_on "Update Invoice"

    assert_text "Invoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice" do
    visit invoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice was successfully destroyed"
  end
end

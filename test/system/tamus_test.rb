require "application_system_test_case"

class TamusTest < ApplicationSystemTestCase
  setup do
    @tamu = tamus(:one)
  end

  test "visiting the index" do
    visit tamus_url
    assert_selector "h1", text: "Tamus"
  end

  test "creating a Tamu" do
    visit tamus_url
    click_on "New Tamu"

    fill_in "Email", with: @tamu.email
    fill_in "Hotel", with: @tamu.hotel
    fill_in "Jenispaket", with: @tamu.jenispaket
    fill_in "Kodebooking", with: @tamu.kodebooking
    fill_in "Namaaktifitas", with: @tamu.namaaktifitas
    fill_in "Namatamu", with: @tamu.namatamu
    fill_in "Negara", with: @tamu.negara
    fill_in "Note", with: @tamu.note
    fill_in "Qty", with: @tamu.qty
    fill_in "Supplier", with: @tamu.supplier
    fill_in "Tanggal", with: @tamu.tanggal
    fill_in "Telp", with: @tamu.telp
    click_on "Create Tamu"

    assert_text "Tamu was successfully created"
    click_on "Back"
  end

  test "updating a Tamu" do
    visit tamus_url
    click_on "Edit", match: :first

    fill_in "Email", with: @tamu.email
    fill_in "Hotel", with: @tamu.hotel
    fill_in "Jenispaket", with: @tamu.jenispaket
    fill_in "Kodebooking", with: @tamu.kodebooking
    fill_in "Namaaktifitas", with: @tamu.namaaktifitas
    fill_in "Namatamu", with: @tamu.namatamu
    fill_in "Negara", with: @tamu.negara
    fill_in "Note", with: @tamu.note
    fill_in "Qty", with: @tamu.qty
    fill_in "Supplier", with: @tamu.supplier
    fill_in "Tanggal", with: @tamu.tanggal
    fill_in "Telp", with: @tamu.telp
    click_on "Update Tamu"

    assert_text "Tamu was successfully updated"
    click_on "Back"
  end

  test "destroying a Tamu" do
    visit tamus_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tamu was successfully destroyed"
  end
end

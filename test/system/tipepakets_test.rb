require "application_system_test_case"

class TipepaketsTest < ApplicationSystemTestCase
  setup do
    @tipepaket = tipepakets(:one)
  end

  test "visiting the index" do
    visit tipepakets_url
    assert_selector "h1", text: "Tipepakets"
  end

  test "creating a Tipepaket" do
    visit tipepakets_url
    click_on "New Tipepaket"

    fill_in "Exclude", with: @tipepaket.exclude
    fill_in "Harga", with: @tipepaket.harga
    fill_in "Include", with: @tipepaket.include
    fill_in "Jenispaket", with: @tipepaket.jenispaket
    fill_in "Namaaktifitas", with: @tipepaket.namaaktifitas
    click_on "Create Tipepaket"

    assert_text "Tipepaket was successfully created"
    click_on "Back"
  end

  test "updating a Tipepaket" do
    visit tipepakets_url
    click_on "Edit", match: :first

    fill_in "Exclude", with: @tipepaket.exclude
    fill_in "Harga", with: @tipepaket.harga
    fill_in "Include", with: @tipepaket.include
    fill_in "Jenispaket", with: @tipepaket.jenispaket
    fill_in "Namaaktifitas", with: @tipepaket.namaaktifitas
    click_on "Update Tipepaket"

    assert_text "Tipepaket was successfully updated"
    click_on "Back"
  end

  test "destroying a Tipepaket" do
    visit tipepakets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tipepaket was successfully destroyed"
  end
end

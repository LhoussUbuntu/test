require "application_system_test_case"

class FacturesTest < ApplicationSystemTestCase
  setup do
    @facture = factures(:one)
  end

  test "visiting the index" do
    visit factures_url
    assert_selector "h1", text: "Factures"
  end

  test "creating a Facture" do
    visit factures_url
    click_on "New Facture"

    fill_in "Code client", with: @facture.code_client
    fill_in "Cree bar", with: @facture.cree_bar
    fill_in "Date", with: @facture.date
    check "Est regle" if @facture.est_regle
    check "Est valid" if @facture.est_valid
    fill_in "Mode reglement", with: @facture.mode_reglement
    fill_in "Montant ht", with: @facture.montant_ht
    fill_in "Montant ttc", with: @facture.montant_ttc
    fill_in "Montant tva", with: @facture.montant_tva
    fill_in "N facute", with: @facture.n_facute
    click_on "Create Facture"

    assert_text "Facture was successfully created"
    click_on "Back"
  end

  test "updating a Facture" do
    visit factures_url
    click_on "Edit", match: :first

    fill_in "Code client", with: @facture.code_client
    fill_in "Cree bar", with: @facture.cree_bar
    fill_in "Date", with: @facture.date
    check "Est regle" if @facture.est_regle
    check "Est valid" if @facture.est_valid
    fill_in "Mode reglement", with: @facture.mode_reglement
    fill_in "Montant ht", with: @facture.montant_ht
    fill_in "Montant ttc", with: @facture.montant_ttc
    fill_in "Montant tva", with: @facture.montant_tva
    fill_in "N facute", with: @facture.n_facute
    click_on "Update Facture"

    assert_text "Facture was successfully updated"
    click_on "Back"
  end

  test "destroying a Facture" do
    visit factures_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Facture was successfully destroyed"
  end
end

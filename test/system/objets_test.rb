require "application_system_test_case"

class ObjetsTest < ApplicationSystemTestCase
  setup do
    @objet = objets(:one)
  end

  test "visiting the index" do
    visit objets_url
    assert_selector "h1", text: "Objets"
  end

  test "should create objet" do
    visit objets_url
    click_on "New objet"

    fill_in "Date", with: @objet.date
    fill_in "Description", with: @objet.description
    fill_in "Lieu", with: @objet.lieu
    fill_in "Photo", with: @objet.photo
    fill_in "Statut", with: @objet.statut
    fill_in "Titre", with: @objet.titre
    click_on "Create Objet"

    assert_text "Objet was successfully created"
    click_on "Back"
  end

  test "should update Objet" do
    visit objet_url(@objet)
    click_on "Edit this objet", match: :first

    fill_in "Date", with: @objet.date
    fill_in "Description", with: @objet.description
    fill_in "Lieu", with: @objet.lieu
    fill_in "Photo", with: @objet.photo
    fill_in "Statut", with: @objet.statut
    fill_in "Titre", with: @objet.titre
    click_on "Update Objet"

    assert_text "Objet was successfully updated"
    click_on "Back"
  end

  test "should destroy Objet" do
    visit objet_url(@objet)
    click_on "Destroy this objet", match: :first

    assert_text "Objet was successfully destroyed"
  end
end

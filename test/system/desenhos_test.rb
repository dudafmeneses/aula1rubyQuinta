require "application_system_test_case"

class DesenhosTest < ApplicationSystemTestCase
  setup do
    @desenho = desenhos(:one)
  end

  test "visiting the index" do
    visit desenhos_url
    assert_selector "h1", text: "Desenhos"
  end

  test "should create desenho" do
    visit desenhos_url
    click_on "New desenho"

    fill_in "Datadelancamento", with: @desenho.dataDeLancamento
    fill_in "Descricao", with: @desenho.descricao
    fill_in "Diretor", with: @desenho.diretor
    fill_in "Episodios", with: @desenho.episodios
    fill_in "Nome", with: @desenho.nome
    click_on "Create Desenho"

    assert_text "Desenho was successfully created"
    click_on "Back"
  end

  test "should update Desenho" do
    visit desenho_url(@desenho)
    click_on "Edit this desenho", match: :first

    fill_in "Datadelancamento", with: @desenho.dataDeLancamento
    fill_in "Descricao", with: @desenho.descricao
    fill_in "Diretor", with: @desenho.diretor
    fill_in "Episodios", with: @desenho.episodios
    fill_in "Nome", with: @desenho.nome
    click_on "Update Desenho"

    assert_text "Desenho was successfully updated"
    click_on "Back"
  end

  test "should destroy Desenho" do
    visit desenho_url(@desenho)
    click_on "Destroy this desenho", match: :first

    assert_text "Desenho was successfully destroyed"
  end
end

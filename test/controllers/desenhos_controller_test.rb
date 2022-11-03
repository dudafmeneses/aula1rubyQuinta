require "test_helper"

class DesenhosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @desenho = desenhos(:one)
  end

  test "should get index" do
    get desenhos_url
    assert_response :success
  end

  test "should get new" do
    get new_desenho_url
    assert_response :success
  end

  test "should create desenho" do
    assert_difference("Desenho.count") do
      post desenhos_url, params: { desenho: { dataDeLancamento: @desenho.dataDeLancamento, descricao: @desenho.descricao, diretor: @desenho.diretor, episodios: @desenho.episodios, nome: @desenho.nome } }
    end

    assert_redirected_to desenho_url(Desenho.last)
  end

  test "should show desenho" do
    get desenho_url(@desenho)
    assert_response :success
  end

  test "should get edit" do
    get edit_desenho_url(@desenho)
    assert_response :success
  end

  test "should update desenho" do
    patch desenho_url(@desenho), params: { desenho: { dataDeLancamento: @desenho.dataDeLancamento, descricao: @desenho.descricao, diretor: @desenho.diretor, episodios: @desenho.episodios, nome: @desenho.nome } }
    assert_redirected_to desenho_url(@desenho)
  end

  test "should destroy desenho" do
    assert_difference("Desenho.count", -1) do
      delete desenho_url(@desenho)
    end

    assert_redirected_to desenhos_url
  end
end

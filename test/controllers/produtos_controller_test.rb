require 'test_helper'

class ProdutosControllerTest < ActionController::TestCase
  setup do
    @produto = produtos(:one)
    @update = {
      titulo: 'Lorem Ipsum',
      descricao: 'Wibbles are fun!',
      url_image: 'lorem.jpg',
      preco: 19.95
      }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:produtos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create produto" do
    assert_difference('Produto.count') do
      post :create, produto: @update#{ descricao: @produto.descricao, preco: @produto.preco, titulo: @produto.titulo, url_image: @produto.url_image }
    end

    assert_redirected_to produto_path(assigns(:produto))
  end

  test "should show produto" do
    get :show, id: @produto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @produto
    assert_response :success
  end

  test "should update produto" do
    patch :update, id: @produto, produto: @update#{ descricao: @produto.descricao, preco: @produto.preco, titulo: @produto.titulo, url_image: @produto.url_image }
    assert_redirected_to produto_path(assigns(:produto))
    
  end

  test "should destroy produto" do
    assert_difference('Produto.count', -1) do
      delete :destroy, id: @produto
    end

    assert_redirected_to produtos_path
  end
end

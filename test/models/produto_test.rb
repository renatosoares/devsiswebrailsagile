require 'test_helper'

class ProdutoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Os atributos do produto não podem ficarm em branco" do
	produto = Produto.new
	assert produto.invalid?
	assert produto.errors[:titulo].any?
	assert produto.errors[:descricao].any?
	assert produto.errors[:preco].any?
	assert produto.errors[:url_image].any?
	end
end

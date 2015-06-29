class StoreController < ApplicationController
  def index
  	@produtos = Produto.order(:titulo)
  end
end

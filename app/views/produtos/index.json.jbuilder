json.array!(@produtos) do |produto|
  json.extract! produto, :id, :titulo, :descricao, :url_image, :preco
  json.url produto_url(produto, format: :json)
end

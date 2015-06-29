class Produto < ActiveRecord::Base
	validates :titulo, :descricao, :url_image, presence: true
	validates :preco, numericality: {greater_than_or_equal_to: 0.01}
	validates :titulo, uniqueness: true
	validates :url_image, allow_blank: true, format: {
	with: %r{\.(gif|jpg|png)\Z}i,
	message: 'precisa ser uma URL para GIF, JPG or PNG imagem.'
}
end

class Produto < ActiveRecord::Base
	validates :titulo, :descricao, :url_image, presence: true
	validates :preco, numericality: {greater_than_or_equal_to: 0.01}
	validates :titulo, uniqueness: true
	validates :url_image, allow_blank: true, format: {
	with: %r{\.(gif|jpg|png)\Z}i,
	message: 'precisa ser uma URL para GIF, JPG or PNG imagem.'
	}
	def self.latest
		Produto.order(:updated_at).last
		
	end

	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item
#...

	private
	# ensure that there are no line items referencing this product
	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end

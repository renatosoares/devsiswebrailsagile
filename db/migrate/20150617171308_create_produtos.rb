class CreateProdutos < ActiveRecord::Migration
  def change
    create_table :produtos do |t|
      t.string :titulo
      t.text :descricao
      t.string :url_image
      t.decimal :preco

      t.timestamps null: false
    end
  end
end

class CreateProductPages < ActiveRecord::Migration[7.2]
  def change
    create_table :product_pages do |t|
      t.string :name
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end

class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.string :description
      t.references :category_product, foreign_key: true

      t.timestamps
    end
  end
end

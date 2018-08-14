class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.integer :discount
      t.integer :tax_invoice
      t.decimal :total
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end

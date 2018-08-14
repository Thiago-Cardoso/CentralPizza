class CreateOrderReports < ActiveRecord::Migration[5.0]
  def change
    create_table :order_reports do |t|
      t.string :description
      t.datetime :date_time
      t.references :order, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class AddFieldsToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :phone_number, :integer, limit:8 
    add_reference :users, :position, foreign_key: true
  end
end



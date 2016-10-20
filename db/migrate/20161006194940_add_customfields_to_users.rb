class AddCustomfieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :name, :string
    add_column :users, :addr1, :string
    add_column :users, :addr2, :string
    add_column :users, :phone, :integer
    add_column :users, :bnum, :integer
    add_column :users, :base_rate, :decimal
    add_column :users, :closing, :text
  end
end

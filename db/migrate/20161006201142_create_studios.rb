class CreateStudios < ActiveRecord::Migration[5.0]
  def change
    create_table :studios do |t|
      t.string :name
      t.string :addr1
      t.string :addr2
      t.integer :phone

      t.timestamps
    end
  end
end

class CreateUserResources < ActiveRecord::Migration[5.0]
  def change
    create_table :user_resources do |t|
      t.integer :user_id
      t.string :url

      t.timestamps
    end
  end
end

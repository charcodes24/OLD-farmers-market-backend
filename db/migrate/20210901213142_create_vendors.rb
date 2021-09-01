class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end

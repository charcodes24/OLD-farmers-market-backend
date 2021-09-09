class RemoveCategoryFromVendors < ActiveRecord::Migration[6.1]
  def change
    remove_column :vendors, :category, :string
  end
end

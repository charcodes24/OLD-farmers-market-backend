class AddIsVendorToVendors < ActiveRecord::Migration[6.1]
  def change
    add_column :vendors, :is_vendor, :boolean
  end
end

class AddSupplierToTipepaket < ActiveRecord::Migration[6.0]
  def change
    add_column :tipepakets, :supplier, :string
  end
end

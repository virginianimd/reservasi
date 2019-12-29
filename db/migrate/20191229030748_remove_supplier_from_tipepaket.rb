class RemoveSupplierFromTipepaket < ActiveRecord::Migration[6.0]
  def change

    remove_column :tipepakets, :supplier, :string
    add_column :tipepakets, :supplier_id, :integer

  end
end

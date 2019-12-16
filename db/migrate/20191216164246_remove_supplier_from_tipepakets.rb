class RemoveSupplierFromTipepakets < ActiveRecord::Migration[6.0]
  def change

    remove_column :tipepakets, :supplier, :string
  end
end

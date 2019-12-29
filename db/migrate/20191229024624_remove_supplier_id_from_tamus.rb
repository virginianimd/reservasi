class RemoveSupplierIdFromTamus < ActiveRecord::Migration[6.0]
  def change

    remove_column :tamus, :supplier_id, :integer
    add_column :tamus, :supplier, :string

  end
end

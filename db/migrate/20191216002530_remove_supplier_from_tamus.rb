class RemoveSupplierFromTamus < ActiveRecord::Migration[6.0]
  def change
    remove_column :tamus, :supplier, :string
    add_column :tamus, :supplier_id, :integer
  end
end

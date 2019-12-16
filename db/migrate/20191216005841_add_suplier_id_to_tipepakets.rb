class AddSuplierIdToTipepakets < ActiveRecord::Migration[6.0]
  def change
    add_column :tipepakets, :supplier_id, :integer
  end
end

class AddAddressToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :address, :text
  end
end

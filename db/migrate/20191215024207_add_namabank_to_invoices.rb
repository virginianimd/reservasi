class AddNamabankToInvoices < ActiveRecord::Migration[6.0]
  def change
    add_column :invoices, :namabank, :string
  end
end

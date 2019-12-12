class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.integer :noinvoice
      t.date :tanggal
      t.string :supplier
      t.integer :telp
      t.date :paymentdue
      t.text :desk
      t.string :namatamu
      t.string :namaaktifitas
      t.date :tglaktifitas
      t.integer :qty
      t.decimal :totalamount
      t.string :namaakun
      t.integer :nomorakun
      t.string :swiftcode

      t.timestamps
    end
  end
end

class CreateTamus < ActiveRecord::Migration[6.0]
  def change
    create_table :tamus do |t|
      t.integer :kodebooking
      t.string :namatamu
      t.integer :qty
      t.date :tanggal
      t.text :hotel
      t.string :negara
      t.integer :telp
      t.string :email
      t.text :note
      t.string :jenispaket
      t.string :namaaktifitas
      t.string :supplier

      t.timestamps
    end
  end
end

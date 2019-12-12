class CreateTipepakets < ActiveRecord::Migration[6.0]
  def change
    create_table :tipepakets do |t|
      t.string :namaaktifitas
      t.decimal :harga
      t.text :include
      t.text :exclude
      t.string :jenispaket

      t.timestamps
    end
  end
end

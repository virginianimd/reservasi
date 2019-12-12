class CreatePakets < ActiveRecord::Migration[6.0]
  def change
    create_table :pakets do |t|
      t.string :jenispaket
      t.text :desk

      t.timestamps
    end
  end
end

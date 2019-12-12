class CreateBankaccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :bankaccounts do |t|
      t.string :namaakun
      t.string :namabank
      t.integer :nomorakun
      t.string :swiftcode

      t.timestamps
    end
  end
end

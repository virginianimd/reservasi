class RemoveTanggalFromTamus < ActiveRecord::Migration[6.0]
  def change

    remove_column :tamus, :tanggal, :date
  end
end

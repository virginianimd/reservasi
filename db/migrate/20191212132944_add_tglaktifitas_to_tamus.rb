class AddTglaktifitasToTamus < ActiveRecord::Migration[6.0]
  def change
    add_column :tamus, :tglaktifitas, :date
  end
end

class RemoveJenispaketFromTamus < ActiveRecord::Migration[6.0]
  def change

    remove_column :tamus, :jenispaket, :string
    add_column :tamus, :tipepaket, :string
  end
end

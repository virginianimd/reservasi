class RemoveTipepaketFromTamus < ActiveRecord::Migration[6.0]
  def change

    remove_column :tamus, :tipepaket, :string
  end
end

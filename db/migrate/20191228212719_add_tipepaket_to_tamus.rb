class AddTipepaketToTamus < ActiveRecord::Migration[6.0]
  def change
    add_column :tamus, :tipepaket_id, :integer
  end
end

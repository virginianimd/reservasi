class AddJenispaketToTamus < ActiveRecord::Migration[6.0]
  def change
    add_column :tamus, :jenispaket, :string
  end
end

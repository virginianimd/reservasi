class AddDriverToTamus < ActiveRecord::Migration[6.0]
  def change
    add_column :tamus, :driver, :string
  end
end

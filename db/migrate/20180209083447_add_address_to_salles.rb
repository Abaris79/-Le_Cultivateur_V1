class AddAddressToSalles < ActiveRecord::Migration[5.1]
  def change
    add_column :salles, :address, :string
  end
end

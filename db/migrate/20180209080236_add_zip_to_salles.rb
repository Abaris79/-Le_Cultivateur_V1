class AddZipToSalles < ActiveRecord::Migration[5.1]
  def change
    add_column :salles, :zip, :integer
  end
end

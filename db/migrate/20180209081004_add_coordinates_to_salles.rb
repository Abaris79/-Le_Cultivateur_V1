class AddCoordinatesToSalles < ActiveRecord::Migration[5.1]
  def change
    add_column :salles, :latitude, :float
    add_column :salles, :longitude, :float
  end
end

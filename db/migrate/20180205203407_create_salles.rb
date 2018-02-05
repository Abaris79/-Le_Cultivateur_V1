class CreateSalles < ActiveRecord::Migration[5.1]
  def change
    create_table :salles do |t|
      t.string :name
      t.string :city
      t.integer :jauge
      t.integer :stage_span
      t.string :acoustic
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

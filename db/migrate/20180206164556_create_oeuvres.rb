class CreateOeuvres < ActiveRecord::Migration[5.1]
  def change
    create_table :oeuvres do |t|
      t.string :name
      t.string :author
      t.integer :date
      t.float :duration
      t.string :reference
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

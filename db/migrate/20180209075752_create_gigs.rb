class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
      t.string :date
      t.string :time
      t.references :salle, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :category
      t.integer :cost
      t.integer :min_span_stage
      t.string :acoustic
      t.string :description
      t.integer :duration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

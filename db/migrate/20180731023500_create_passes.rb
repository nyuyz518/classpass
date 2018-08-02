class CreatePasses < ActiveRecord::Migration[5.2]
  def change
    create_table :passes do |t|
      t.integer :price 
      t.references :student, foreign_key: true
      t.references :school, foreign_key: true

      t.timestamps
    end
  end
end

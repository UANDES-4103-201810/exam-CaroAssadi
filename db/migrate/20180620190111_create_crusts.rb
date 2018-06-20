class CreateCrusts < ActiveRecord::Migration[5.1]
  def change
    create_table :crusts do |t|
      t.string :type
      t.integer :price
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end

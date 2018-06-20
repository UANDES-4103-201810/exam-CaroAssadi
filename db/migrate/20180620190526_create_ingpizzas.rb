class CreateIngpizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :ingpizzas do |t|
      t.references :ingredient, foreign_key: true
      t.references :pizza, foreign_key: true

      t.timestamps
    end
  end
end

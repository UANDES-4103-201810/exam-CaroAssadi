class CreateOrderpizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :orderpizzas do |t|
      t.string :payment
      t.references :pizza, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end

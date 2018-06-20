class CreateDeliveryinfos < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveryinfos do |t|
      t.string :address1
      t.string :address2
      t.integer :phone
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end

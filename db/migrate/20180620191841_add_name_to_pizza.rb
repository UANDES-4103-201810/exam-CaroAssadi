class AddNameToPizza < ActiveRecord::Migration[5.1]
  def change
    add_column :pizzas, :name, :string
  end
end

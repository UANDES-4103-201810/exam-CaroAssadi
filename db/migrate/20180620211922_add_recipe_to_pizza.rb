class AddRecipeToPizza < ActiveRecord::Migration[5.1]
  def change
    add_reference :pizzas, :recipe, foreign_key: true
  end
end

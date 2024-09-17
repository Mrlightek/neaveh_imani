class CreateShoppings < ActiveRecord::Migration[7.2]
  def change
    create_table :shoppings do |t|
      t.timestamps
    end
  end
end

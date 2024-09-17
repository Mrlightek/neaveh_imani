class CreateCustomerServices < ActiveRecord::Migration[7.2]
  def change
    create_table :customer_services do |t|
      t.timestamps
    end
  end
end

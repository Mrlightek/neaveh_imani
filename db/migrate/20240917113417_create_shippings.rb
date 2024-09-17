class CreateShippings < ActiveRecord::Migration[7.2]
  def change
    create_table :shippings do |t|
      t.timestamps
    end
  end
end

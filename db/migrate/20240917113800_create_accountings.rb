class CreateAccountings < ActiveRecord::Migration[7.2]
  def change
    create_table :accountings do |t|
      t.timestamps
    end
  end
end

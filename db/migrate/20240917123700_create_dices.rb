class CreateDices < ActiveRecord::Migration[7.2]
  def change
    create_table :dices do |t|
      t.timestamps
    end
  end
end

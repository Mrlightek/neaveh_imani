class CreateMarketings < ActiveRecord::Migration[7.2]
  def change
    create_table :marketings do |t|
      t.timestamps
    end
  end
end

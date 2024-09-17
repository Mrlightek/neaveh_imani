class CreateBankings < ActiveRecord::Migration[7.2]
  def change
    create_table :bankings do |t|
      t.timestamps
    end
  end
end

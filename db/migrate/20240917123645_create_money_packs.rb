class CreateMoneyPacks < ActiveRecord::Migration[7.2]
  def change
    create_table :money_packs do |t|
      t.timestamps
    end
  end
end

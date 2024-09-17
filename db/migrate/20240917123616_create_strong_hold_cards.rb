class CreateStrongHoldCards < ActiveRecord::Migration[7.2]
  def change
    create_table :strong_hold_cards do |t|
      t.timestamps
    end
  end
end

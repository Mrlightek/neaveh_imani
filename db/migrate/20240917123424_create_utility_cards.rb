class CreateUtilityCards < ActiveRecord::Migration[7.2]
  def change
    create_table :utility_cards do |t|
      t.timestamps
    end
  end
end

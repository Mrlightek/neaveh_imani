class CreateCharacterCards < ActiveRecord::Migration[7.2]
  def change
    create_table :character_cards do |t|
      t.timestamps
    end
  end
end

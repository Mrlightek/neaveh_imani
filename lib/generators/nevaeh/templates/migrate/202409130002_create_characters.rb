# db/migrate/202409130002_create_characters.rb
class CreateCharacters < ActiveRecord::Migration[7.0]
  def change
    create_table :characters do |t|
      t.references :game, foreign_key: true, null: false
      t.references :player, foreign_key: true # Player controlling the character
      t.string :name, null: false
      t.integer :health, default: 100
      t.integer :attack, default: 10
      t.integer :defense, default: 5
      t.text :abilities

      t.timestamps
    end
  end
end

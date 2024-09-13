# db/migrate/202409130001_create_game_spaces.rb
class CreateGameSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :game_spaces do |t|
      t.references :game, foreign_key: true, null: false
      t.string :name, null: false
      t.string :space_type, null: false
      t.text :description
      t.integer :position, null: false # Position on the game board

      t.timestamps
    end
  end
end

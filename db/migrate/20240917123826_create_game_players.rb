class CreateGamePlayers < ActiveRecord::Migration[7.2]
  def change
    create_table :game_players do |t|
      t.timestamps
    end
  end
end

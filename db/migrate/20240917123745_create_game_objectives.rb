class CreateGameObjectives < ActiveRecord::Migration[7.2]
  def change
    create_table :game_objectives do |t|
      t.timestamps
    end
  end
end

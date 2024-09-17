class CreateHeartShapeHerbCards < ActiveRecord::Migration[7.2]
  def change
    create_table :heart_shape_herb_cards do |t|
      t.timestamps
    end
  end
end

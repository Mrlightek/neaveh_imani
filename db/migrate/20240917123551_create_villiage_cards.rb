class CreateVilliageCards < ActiveRecord::Migration[7.2]
  def change
    create_table :villiage_cards do |t|
      t.timestamps
    end
  end
end

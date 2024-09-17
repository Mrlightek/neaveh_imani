class CreateAlliances < ActiveRecord::Migration[7.2]
  def change
    create_table :alliances do |t|
      t.timestamps
    end
  end
end

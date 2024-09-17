class CreateTitleDeedCards < ActiveRecord::Migration[7.2]
  def change
    create_table :title_deed_cards do |t|
      t.timestamps
    end
  end
end

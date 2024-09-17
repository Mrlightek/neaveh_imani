class CreateKimoyoBeadCards < ActiveRecord::Migration[7.2]
  def change
    create_table :kimoyo_bead_cards do |t|
      t.timestamps
    end
  end
end

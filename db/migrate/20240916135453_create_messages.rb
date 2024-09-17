class CreateMessages < ActiveRecord::Migration[7.2]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.integer :to
      t.references :user, null: false, foreign_key: true
      t.boolean :is_fav

      t.timestamps
    end
  end
end

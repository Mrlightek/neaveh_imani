class CreateDownloads < ActiveRecord::Migration[7.2]
  def change
    create_table :downloads do |t|
      t.string :title
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateSupports < ActiveRecord::Migration[7.2]
  def change
    create_table :supports do |t|
      t.timestamps
    end
  end
end

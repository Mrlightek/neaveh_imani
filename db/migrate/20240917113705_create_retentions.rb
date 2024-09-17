class CreateRetentions < ActiveRecord::Migration[7.2]
  def change
    create_table :retentions do |t|
      t.timestamps
    end
  end
end

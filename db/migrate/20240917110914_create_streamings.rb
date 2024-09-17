class CreateStreamings < ActiveRecord::Migration[7.2]
  def change
    create_table :streamings do |t|
      t.timestamps
    end
  end
end

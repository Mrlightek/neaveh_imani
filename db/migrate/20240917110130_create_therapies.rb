class CreateTherapies < ActiveRecord::Migration[7.2]
  def change
    create_table :therapies do |t|
      t.timestamps
    end
  end
end

class CreateDatings < ActiveRecord::Migration[7.2]
  def change
    create_table :datings do |t|
      t.timestamps
    end
  end
end

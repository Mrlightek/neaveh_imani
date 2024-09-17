class CreateTransportCards < ActiveRecord::Migration[7.2]
  def change
    create_table :transport_cards do |t|
      t.timestamps
    end
  end
end

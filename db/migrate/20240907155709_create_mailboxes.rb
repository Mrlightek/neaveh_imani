class CreateMailboxes < ActiveRecord::Migration[7.2]
  def change
    create_table :mailboxes do |t|
      t.timestamps
    end
  end
end

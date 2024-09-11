class AddMailboxToUser < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :mailbox, foreign_key: true
    add_reference :users, :dashboard, foreign_key: true
  end
end

class AddSubscribersToUser < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :user_subscribeds, null: true, foreign_key: true
    add_reference :users, :user_subscribers, null: true, foreign_key: true
  end
end

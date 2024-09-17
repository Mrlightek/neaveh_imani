class CreateUserSubscribers < ActiveRecord::Migration[7.2]
  def change
    create_table :user_subscribers do |t|
      t.integer :to
      t.integer :from

      t.timestamps
    end
  end
end

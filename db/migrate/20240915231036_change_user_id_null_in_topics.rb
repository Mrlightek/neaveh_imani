class ChangeUserIdNullInTopics < ActiveRecord::Migration[7.2]
  def change
      change_column_null :topics, :user_id, true
      change_column_null :topics, :category_id, true
  end
end

class AddApplicationSettingsToUser < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :application_settings, null: true, foreign_key: true
  end
end

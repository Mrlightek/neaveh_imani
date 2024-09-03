class CreateDashboards < ActiveRecord::Migration[7.2]
  def change
    create_table :dashboards do |t|
      t.integer :site_visits
      t.integer :site_sales
      t.integer :sites_unique_visits
      t.integer :bounce_rate
      t.boolean :has_message
      t.boolean :has_notification
      t.string :name
      t.string :profile_pic
      t.string :server_status
      t.integer :cpu_usage
      t.integer :memory_usage
      t.integer :disk_usage
      t.integer :database
      t.integer :domain
      t.integer :email_account
      t.string :new_reg_users
      t.integer :sales_status
      t.string :recent_article
      t.string :statistic_summary
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

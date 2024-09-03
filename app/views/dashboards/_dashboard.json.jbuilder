json.extract! dashboard, :id, :site_visits, :site_sales, :sites_unique_visits, :bounce_rate, :has_message, :has_notification, :name, :profile_pic, :server_status, :cpu_usage, :memory_usage, :disk_usage, :database, :domain, :email_account, :new_reg_users, :sales_status, :recent_article, :statistic_summary, :user_id, :created_at, :updated_at
json.url dashboard_url(dashboard, format: :json)

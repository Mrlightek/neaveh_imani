require "test_helper"

class DashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dashboard = dashboards(:one)
  end

  test "should get index" do
    get dashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_dashboard_url
    assert_response :success
  end

  test "should create dashboard" do
    assert_difference("Dashboard.count") do
      post dashboards_url, params: { dashboard: { bounce_rate: @dashboard.bounce_rate, cpu_usage: @dashboard.cpu_usage, database: @dashboard.database, disk_usage: @dashboard.disk_usage, domain: @dashboard.domain, email_account: @dashboard.email_account, has_message: @dashboard.has_message, has_notification: @dashboard.has_notification, memory_usage: @dashboard.memory_usage, name: @dashboard.name, new_reg_users: @dashboard.new_reg_users, profile_pic: @dashboard.profile_pic, recent_article: @dashboard.recent_article, sales_status: @dashboard.sales_status, server_status: @dashboard.server_status, site_sales: @dashboard.site_sales, site_visits: @dashboard.site_visits, sites_unique_visits: @dashboard.sites_unique_visits, statistic_summary: @dashboard.statistic_summary, user_id: @dashboard.user_id } }
    end

    assert_redirected_to dashboard_url(Dashboard.last)
  end

  test "should show dashboard" do
    get dashboard_url(@dashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_dashboard_url(@dashboard)
    assert_response :success
  end

  test "should update dashboard" do
    patch dashboard_url(@dashboard), params: { dashboard: { bounce_rate: @dashboard.bounce_rate, cpu_usage: @dashboard.cpu_usage, database: @dashboard.database, disk_usage: @dashboard.disk_usage, domain: @dashboard.domain, email_account: @dashboard.email_account, has_message: @dashboard.has_message, has_notification: @dashboard.has_notification, memory_usage: @dashboard.memory_usage, name: @dashboard.name, new_reg_users: @dashboard.new_reg_users, profile_pic: @dashboard.profile_pic, recent_article: @dashboard.recent_article, sales_status: @dashboard.sales_status, server_status: @dashboard.server_status, site_sales: @dashboard.site_sales, site_visits: @dashboard.site_visits, sites_unique_visits: @dashboard.sites_unique_visits, statistic_summary: @dashboard.statistic_summary, user_id: @dashboard.user_id } }
    assert_redirected_to dashboard_url(@dashboard)
  end

  test "should destroy dashboard" do
    assert_difference("Dashboard.count", -1) do
      delete dashboard_url(@dashboard)
    end

    assert_redirected_to dashboards_url
  end
end

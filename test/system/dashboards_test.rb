require "application_system_test_case"

class DashboardsTest < ApplicationSystemTestCase
  setup do
    @dashboard = dashboards(:one)
  end

  test "visiting the index" do
    visit dashboards_url
    assert_selector "h1", text: "Dashboards"
  end

  test "should create dashboard" do
    visit dashboards_url
    click_on "New dashboard"

    fill_in "Bounce rate", with: @dashboard.bounce_rate
    fill_in "Cpu usage", with: @dashboard.cpu_usage
    fill_in "Database", with: @dashboard.database
    fill_in "Disk usage", with: @dashboard.disk_usage
    fill_in "Domain", with: @dashboard.domain
    fill_in "Email account", with: @dashboard.email_account
    check "Has message" if @dashboard.has_message
    check "Has notification" if @dashboard.has_notification
    fill_in "Memory usage", with: @dashboard.memory_usage
    fill_in "Name", with: @dashboard.name
    fill_in "New reg users", with: @dashboard.new_reg_users
    fill_in "Profile pic", with: @dashboard.profile_pic
    fill_in "Recent article", with: @dashboard.recent_article
    fill_in "Sales status", with: @dashboard.sales_status
    fill_in "Server status", with: @dashboard.server_status
    fill_in "Site sales", with: @dashboard.site_sales
    fill_in "Site visits", with: @dashboard.site_visits
    fill_in "Sites unique visits", with: @dashboard.sites_unique_visits
    fill_in "Statistic summary", with: @dashboard.statistic_summary
    fill_in "User", with: @dashboard.user_id
    click_on "Create Dashboard"

    assert_text "Dashboard was successfully created"
    click_on "Back"
  end

  test "should update Dashboard" do
    visit dashboard_url(@dashboard)
    click_on "Edit this dashboard", match: :first

    fill_in "Bounce rate", with: @dashboard.bounce_rate
    fill_in "Cpu usage", with: @dashboard.cpu_usage
    fill_in "Database", with: @dashboard.database
    fill_in "Disk usage", with: @dashboard.disk_usage
    fill_in "Domain", with: @dashboard.domain
    fill_in "Email account", with: @dashboard.email_account
    check "Has message" if @dashboard.has_message
    check "Has notification" if @dashboard.has_notification
    fill_in "Memory usage", with: @dashboard.memory_usage
    fill_in "Name", with: @dashboard.name
    fill_in "New reg users", with: @dashboard.new_reg_users
    fill_in "Profile pic", with: @dashboard.profile_pic
    fill_in "Recent article", with: @dashboard.recent_article
    fill_in "Sales status", with: @dashboard.sales_status
    fill_in "Server status", with: @dashboard.server_status
    fill_in "Site sales", with: @dashboard.site_sales
    fill_in "Site visits", with: @dashboard.site_visits
    fill_in "Sites unique visits", with: @dashboard.sites_unique_visits
    fill_in "Statistic summary", with: @dashboard.statistic_summary
    fill_in "User", with: @dashboard.user_id
    click_on "Update Dashboard"

    assert_text "Dashboard was successfully updated"
    click_on "Back"
  end

  test "should destroy Dashboard" do
    visit dashboard_url(@dashboard)
    click_on "Destroy this dashboard", match: :first

    assert_text "Dashboard was successfully destroyed"
  end
end

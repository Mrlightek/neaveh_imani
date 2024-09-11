require "application_system_test_case"

class ProductPagesTest < ApplicationSystemTestCase
  setup do
    @product_page = product_pages(:one)
  end

  test "visiting the index" do
    visit product_pages_url
    assert_selector "h1", text: "Product pages"
  end

  test "should create product page" do
    visit product_pages_url
    click_on "New product page"

    fill_in "Description", with: @product_page.description
    fill_in "Name", with: @product_page.name
    fill_in "Price", with: @product_page.price
    click_on "Create Product page"

    assert_text "Product page was successfully created"
    click_on "Back"
  end

  test "should update Product page" do
    visit product_page_url(@product_page)
    click_on "Edit this product page", match: :first

    fill_in "Description", with: @product_page.description
    fill_in "Name", with: @product_page.name
    fill_in "Price", with: @product_page.price
    click_on "Update Product page"

    assert_text "Product page was successfully updated"
    click_on "Back"
  end

  test "should destroy Product page" do
    visit product_page_url(@product_page)
    click_on "Destroy this product page", match: :first

    assert_text "Product page was successfully destroyed"
  end
end

require "application_system_test_case"

class GameObjectivesTest < ApplicationSystemTestCase
  setup do
    @game_objective = game_objectives(:one)
  end

  test "visiting the index" do
    visit game_objectives_url
    assert_selector "h1", text: "Game objectives"
  end

  test "should create game objective" do
    visit game_objectives_url
    click_on "New game objective"

    click_on "Create Game objective"

    assert_text "Game objective was successfully created"
    click_on "Back"
  end

  test "should update Game objective" do
    visit game_objective_url(@game_objective)
    click_on "Edit this game objective", match: :first

    click_on "Update Game objective"

    assert_text "Game objective was successfully updated"
    click_on "Back"
  end

  test "should destroy Game objective" do
    visit game_objective_url(@game_objective)
    click_on "Destroy this game objective", match: :first

    assert_text "Game objective was successfully destroyed"
  end
end

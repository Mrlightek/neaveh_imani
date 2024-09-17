require "test_helper"

class GameObjectivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @game_objective = game_objectives(:one)
  end

  test "should get index" do
    get game_objectives_url
    assert_response :success
  end

  test "should get new" do
    get new_game_objective_url
    assert_response :success
  end

  test "should create game_objective" do
    assert_difference("GameObjective.count") do
      post game_objectives_url, params: { game_objective: {} }
    end

    assert_redirected_to game_objective_url(GameObjective.last)
  end

  test "should show game_objective" do
    get game_objective_url(@game_objective)
    assert_response :success
  end

  test "should get edit" do
    get edit_game_objective_url(@game_objective)
    assert_response :success
  end

  test "should update game_objective" do
    patch game_objective_url(@game_objective), params: { game_objective: {} }
    assert_redirected_to game_objective_url(@game_objective)
  end

  test "should destroy game_objective" do
    assert_difference("GameObjective.count", -1) do
      delete game_objective_url(@game_objective)
    end

    assert_redirected_to game_objectives_url
  end
end

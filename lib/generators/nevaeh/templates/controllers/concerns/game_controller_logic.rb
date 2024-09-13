# app/controllers/concerns/game_controller_logic.rb
module GameControllerLogic
  extend ActiveSupport::Concern

  def start
    @game = Game.find(params[:id])
    @game.start_game

    # Assign game spaces, players, and initial states
    initialize_game
  end

  def next_turn
    @game = Game.find(params[:id])
    current_player = @game.next_player
    current_player.take_turn
  end

  def start_game
    game = Game.find(params[:id])
    
    if game.ready_to_start?
      initialize_board(game)
      assign_characters(game)
      set_initial_turns(game)

      game.update(status: 'started')
      redirect_to game_path(game), notice: 'Game has started!'
    else
      redirect_to game_path(game), alert: 'Game is not ready to start.'
    end
  end

  private

  def initialize_game
    # Create game spaces
    GameSpace.create(name: 'Village', game: @game, rent_value: 100)
    GameSpace.create(name: 'Stronghold', game: @game, rent_value: 200)
    GameSpace.create(name: 'Utility', game: @game, rent_value: 150)

    # Assign players
    @game.players.each do |player|
      # Assign starting balance and positions
      player.update(balance: 500)
    end
  end

  # Set up the game board with spaces
  def initialize_board(game)
    spaces = [
      { name: "Start", space_type: "start", position: 0 },
      { name: "Transport Hub", space_type: "transport", position: 1 },
      { name: "Village", space_type: "property", position: 2 },
      # Add more spaces as per the game rules
    ]

    spaces.each do |space|
      game.game_spaces.create!(space)
    end
  end

  # Assign characters to players or generate NPCs
  def assign_characters(game)
    game.players.each do |player|
      character = Character.create!(
        game: game,
        player: player,
        name: "#{player.name}'s Warrior",
        health: 100,
        attack: 15,
        defense: 10,
        abilities: "Special Strike, Heal"
      )
      player.update(character: character)
    end

    # Optionally, add NPCs or additional characters
  end

  # Set the initial turn order
  def set_initial_turns(game)
    game.players.each_with_index do |player, index|
      player.update(turn_order: index + 1)
    end
  end
end

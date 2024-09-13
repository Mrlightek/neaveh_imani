# app/models/game_card.rb
class GameCard < ApplicationRecord
  belongs_to :game
  belongs_to :player

  include GameCardLogic
end

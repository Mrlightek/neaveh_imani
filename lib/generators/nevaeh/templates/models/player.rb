# app/models/player.rb
class Player < ApplicationRecord
  belongs_to :game
  belongs_to :user
  has_many :game_cards

  include BankingLogic
  include PlayerLogic
end


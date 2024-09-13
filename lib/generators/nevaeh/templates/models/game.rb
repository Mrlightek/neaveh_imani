# app/models/game.rb
class Game < ApplicationRecord
  has_many :players
  include GameLogic
end

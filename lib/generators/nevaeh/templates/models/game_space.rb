# app/models/game_space.rb
class GameSpace < ApplicationRecord
  belongs_to :game
  has_many :players
  validates :name, presence: true
  validates :space_type, presence true

  include GameSpaceLogic
end

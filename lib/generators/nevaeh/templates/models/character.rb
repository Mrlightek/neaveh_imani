# app/models/character.rb
class Character < ApplicationRecord
  belongs_to :player, optional: true # Characters can be assigned to players
  belongs_to :game
  
  validates :name, presence: true
  validates :health, numericality: { greater_than_or_equal_to: 0 }
  validates :attack, :defense, numericality: { greater_than_or_equal_to: 0 }

  include CharacterLogic
end

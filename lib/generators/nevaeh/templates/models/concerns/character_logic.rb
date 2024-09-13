# app/models/concerns/character_logic.rb
module CharacterLogic
  extend ActiveSupport::Concern

  included do
    validates :name, :abilities, presence: true
  end

  def use_ability(player)
    # Logic to use character abilities
    case self.ability_type
    when 'Attack'
      player.attack_opponent
    when 'Defense'
      player.defend
    when 'Trade'
      player.negotiate_trade
    end
  end
end

# app/models/concerns/game_card_logic.rb
module GameCardLogic
  extend ActiveSupport::Concern

  included do
    validates :name, presence: true
  end

  def activate_effect(player)
    # Logic for special effects depending on the card
    case self.name
    when 'Kimoyo Bead'
      player.receive_bonus
    when 'Heart-Shaped Herb'
      player.increase_health
    when 'Transport'
      player.move_to_another_space
    end
  end
end

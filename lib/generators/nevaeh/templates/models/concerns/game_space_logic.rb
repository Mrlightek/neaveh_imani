# app/models/concerns/game_space_logic.rb
module GameSpaceLogic
  extend ActiveSupport::Concern

  included do
    validates :name, :type, presence: true
  end

  def trigger_action(player)
    # Logic based on space type
    case self.type
    when 'Village'
      # Player collects rent or resources from village
      player.collect_rent(self)
    when 'Stronghold'
      # Player has a stronghold, possible bonuses
      player.capture_stronghold(self)
    when 'Utility'
      # Special action for utility
      player.pay_or_collect(self)
    end
  end
end

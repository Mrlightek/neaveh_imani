# app/models/concerns/event_logic.rb
module EventLogic
  extend ActiveSupport::Concern

  included do
    validates :description, presence: true
  end

  def trigger_event
    # Logic to trigger an event
  end

  def trigger_event_for_action(player, action)
  Event.create(user: player.user, description: "#{player.name} #{action}")
  Notification.create(user: player.user, message: "#{player.name} performed #{action}")
end

end

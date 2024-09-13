# app/models/concerns/notification_logic.rb
module NotificationLogic
  extend ActiveSupport::Concern

  included do
    validates :message, presence: true
  end

  def send_notification
    # Logic to send notification
  end
end

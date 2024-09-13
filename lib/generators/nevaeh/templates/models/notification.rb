# app/models/notification.rb
class Notification < ApplicationRecord
  belongs_to :user

  include NotificationLogic
end

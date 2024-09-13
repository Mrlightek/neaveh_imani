# app/models/event.rb
class Event < ApplicationRecord
  belongs_to :user
  include EventLogic
end

# app/models/promotion.rb
class Promotion < ApplicationRecord
  belongs_to :user
  has_many :votes

  include PromotionLogic
end

# app/models/concerns/promotion_logic.rb
module PromotionLogic
  extend ActiveSupport::Concern

  included do
    validates :details, presence: true
    validates :status, presence: true
  end

  def eligible_for_promotion?
    # Add logic to determine if the user is eligible for promotion
  end
end

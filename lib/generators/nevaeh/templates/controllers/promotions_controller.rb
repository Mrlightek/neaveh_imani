# app/controllers/promotions_controller.rb
class PromotionsController < ApplicationController
  include PromotionControllerLogic

  before_action :set_promotion, only: %i[show edit update destroy]
end

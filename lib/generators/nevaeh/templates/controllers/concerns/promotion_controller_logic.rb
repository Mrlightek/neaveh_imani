# app/controllers/concerns/promotion_controller_logic.rb
module PromotionControllerLogic
  extend ActiveSupport::Concern

  included do
    def create
      @promotion = Promotion.new(promotion_params)
      if @promotion.save
        redirect_to @promotion, notice: 'Promotion was successfully created.'
      else
        render :new
      end
    end

    def update
      if @promotion.update(promotion_params)
        redirect_to @promotion, notice: 'Promotion was successfully updated.'
      else
        render :edit
      end
    end
  end

  private

  def promotion_params
    params.require(:promotion).permit(:user_id, :details, :status)
  end
end

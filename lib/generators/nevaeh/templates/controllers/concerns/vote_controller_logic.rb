# app/controllers/concerns/vote_controller_logic.rb
module VoteControllerLogic
  extend ActiveSupport::Concern

  def create
    @vote = Vote.new(vote_params)
    if @vote.save
      redirect_to promotions_path, notice: 'Vote was successfully cast.'
    else
      render :new
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:user_id, :promotion_id, :vote)
  end
end

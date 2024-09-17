class UtilityCardsController < ApplicationController
  before_action :set_utility_card, only: %i[ show edit update destroy ]

  # GET /utility_cards or /utility_cards.json
  def index
    @utility_cards = UtilityCard.all
  end

  # GET /utility_cards/1 or /utility_cards/1.json
  def show
  end

  # GET /utility_cards/new
  def new
    @utility_card = UtilityCard.new
  end

  # GET /utility_cards/1/edit
  def edit
  end

  # POST /utility_cards or /utility_cards.json
  def create
    @utility_card = UtilityCard.new(utility_card_params)

    respond_to do |format|
      if @utility_card.save
        format.html { redirect_to utility_card_url(@utility_card), notice: "Utility card was successfully created." }
        format.json { render :show, status: :created, location: @utility_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @utility_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /utility_cards/1 or /utility_cards/1.json
  def update
    respond_to do |format|
      if @utility_card.update(utility_card_params)
        format.html { redirect_to utility_card_url(@utility_card), notice: "Utility card was successfully updated." }
        format.json { render :show, status: :ok, location: @utility_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @utility_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /utility_cards/1 or /utility_cards/1.json
  def destroy
    @utility_card.destroy!

    respond_to do |format|
      format.html { redirect_to utility_cards_url, notice: "Utility card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_utility_card
      @utility_card = UtilityCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def utility_card_params
      params.fetch(:utility_card, {})
    end
end

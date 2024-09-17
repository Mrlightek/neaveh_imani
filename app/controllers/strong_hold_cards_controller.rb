class StrongHoldCardsController < ApplicationController
  before_action :set_strong_hold_card, only: %i[ show edit update destroy ]

  # GET /strong_hold_cards or /strong_hold_cards.json
  def index
    @strong_hold_cards = StrongHoldCard.all
  end

  # GET /strong_hold_cards/1 or /strong_hold_cards/1.json
  def show
  end

  # GET /strong_hold_cards/new
  def new
    @strong_hold_card = StrongHoldCard.new
  end

  # GET /strong_hold_cards/1/edit
  def edit
  end

  # POST /strong_hold_cards or /strong_hold_cards.json
  def create
    @strong_hold_card = StrongHoldCard.new(strong_hold_card_params)

    respond_to do |format|
      if @strong_hold_card.save
        format.html { redirect_to strong_hold_card_url(@strong_hold_card), notice: "Strong hold card was successfully created." }
        format.json { render :show, status: :created, location: @strong_hold_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @strong_hold_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /strong_hold_cards/1 or /strong_hold_cards/1.json
  def update
    respond_to do |format|
      if @strong_hold_card.update(strong_hold_card_params)
        format.html { redirect_to strong_hold_card_url(@strong_hold_card), notice: "Strong hold card was successfully updated." }
        format.json { render :show, status: :ok, location: @strong_hold_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @strong_hold_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strong_hold_cards/1 or /strong_hold_cards/1.json
  def destroy
    @strong_hold_card.destroy!

    respond_to do |format|
      format.html { redirect_to strong_hold_cards_url, notice: "Strong hold card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_strong_hold_card
      @strong_hold_card = StrongHoldCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def strong_hold_card_params
      params.fetch(:strong_hold_card, {})
    end
end

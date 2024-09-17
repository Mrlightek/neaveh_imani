class CharacterCardsController < ApplicationController
  before_action :set_character_card, only: %i[ show edit update destroy ]

  # GET /character_cards or /character_cards.json
  def index
    @character_cards = CharacterCard.all
  end

  # GET /character_cards/1 or /character_cards/1.json
  def show
  end

  # GET /character_cards/new
  def new
    @character_card = CharacterCard.new
  end

  # GET /character_cards/1/edit
  def edit
  end

  # POST /character_cards or /character_cards.json
  def create
    @character_card = CharacterCard.new(character_card_params)

    respond_to do |format|
      if @character_card.save
        format.html { redirect_to character_card_url(@character_card), notice: "Character card was successfully created." }
        format.json { render :show, status: :created, location: @character_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @character_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /character_cards/1 or /character_cards/1.json
  def update
    respond_to do |format|
      if @character_card.update(character_card_params)
        format.html { redirect_to character_card_url(@character_card), notice: "Character card was successfully updated." }
        format.json { render :show, status: :ok, location: @character_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @character_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /character_cards/1 or /character_cards/1.json
  def destroy
    @character_card.destroy!

    respond_to do |format|
      format.html { redirect_to character_cards_url, notice: "Character card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character_card
      @character_card = CharacterCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def character_card_params
      params.fetch(:character_card, {})
    end
end

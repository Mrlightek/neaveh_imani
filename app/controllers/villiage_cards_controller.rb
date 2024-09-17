class VilliageCardsController < ApplicationController
  before_action :set_villiage_card, only: %i[ show edit update destroy ]

  # GET /villiage_cards or /villiage_cards.json
  def index
    @villiage_cards = VilliageCard.all
  end

  # GET /villiage_cards/1 or /villiage_cards/1.json
  def show
  end

  # GET /villiage_cards/new
  def new
    @villiage_card = VilliageCard.new
  end

  # GET /villiage_cards/1/edit
  def edit
  end

  # POST /villiage_cards or /villiage_cards.json
  def create
    @villiage_card = VilliageCard.new(villiage_card_params)

    respond_to do |format|
      if @villiage_card.save
        format.html { redirect_to villiage_card_url(@villiage_card), notice: "Villiage card was successfully created." }
        format.json { render :show, status: :created, location: @villiage_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @villiage_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /villiage_cards/1 or /villiage_cards/1.json
  def update
    respond_to do |format|
      if @villiage_card.update(villiage_card_params)
        format.html { redirect_to villiage_card_url(@villiage_card), notice: "Villiage card was successfully updated." }
        format.json { render :show, status: :ok, location: @villiage_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @villiage_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /villiage_cards/1 or /villiage_cards/1.json
  def destroy
    @villiage_card.destroy!

    respond_to do |format|
      format.html { redirect_to villiage_cards_url, notice: "Villiage card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_villiage_card
      @villiage_card = VilliageCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def villiage_card_params
      params.fetch(:villiage_card, {})
    end
end

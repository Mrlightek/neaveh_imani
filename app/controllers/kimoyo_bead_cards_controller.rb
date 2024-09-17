class KimoyoBeadCardsController < ApplicationController
  before_action :set_kimoyo_bead_card, only: %i[ show edit update destroy ]

  # GET /kimoyo_bead_cards or /kimoyo_bead_cards.json
  def index
    @kimoyo_bead_cards = KimoyoBeadCard.all
  end

  # GET /kimoyo_bead_cards/1 or /kimoyo_bead_cards/1.json
  def show
  end

  # GET /kimoyo_bead_cards/new
  def new
    @kimoyo_bead_card = KimoyoBeadCard.new
  end

  # GET /kimoyo_bead_cards/1/edit
  def edit
  end

  # POST /kimoyo_bead_cards or /kimoyo_bead_cards.json
  def create
    @kimoyo_bead_card = KimoyoBeadCard.new(kimoyo_bead_card_params)

    respond_to do |format|
      if @kimoyo_bead_card.save
        format.html { redirect_to kimoyo_bead_card_url(@kimoyo_bead_card), notice: "Kimoyo bead card was successfully created." }
        format.json { render :show, status: :created, location: @kimoyo_bead_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kimoyo_bead_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kimoyo_bead_cards/1 or /kimoyo_bead_cards/1.json
  def update
    respond_to do |format|
      if @kimoyo_bead_card.update(kimoyo_bead_card_params)
        format.html { redirect_to kimoyo_bead_card_url(@kimoyo_bead_card), notice: "Kimoyo bead card was successfully updated." }
        format.json { render :show, status: :ok, location: @kimoyo_bead_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kimoyo_bead_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kimoyo_bead_cards/1 or /kimoyo_bead_cards/1.json
  def destroy
    @kimoyo_bead_card.destroy!

    respond_to do |format|
      format.html { redirect_to kimoyo_bead_cards_url, notice: "Kimoyo bead card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kimoyo_bead_card
      @kimoyo_bead_card = KimoyoBeadCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kimoyo_bead_card_params
      params.fetch(:kimoyo_bead_card, {})
    end
end

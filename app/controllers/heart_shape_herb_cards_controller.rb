class HeartShapeHerbCardsController < ApplicationController
  before_action :set_heart_shape_herb_card, only: %i[ show edit update destroy ]

  # GET /heart_shape_herb_cards or /heart_shape_herb_cards.json
  def index
    @heart_shape_herb_cards = HeartShapeHerbCard.all
  end

  # GET /heart_shape_herb_cards/1 or /heart_shape_herb_cards/1.json
  def show
  end

  # GET /heart_shape_herb_cards/new
  def new
    @heart_shape_herb_card = HeartShapeHerbCard.new
  end

  # GET /heart_shape_herb_cards/1/edit
  def edit
  end

  # POST /heart_shape_herb_cards or /heart_shape_herb_cards.json
  def create
    @heart_shape_herb_card = HeartShapeHerbCard.new(heart_shape_herb_card_params)

    respond_to do |format|
      if @heart_shape_herb_card.save
        format.html { redirect_to heart_shape_herb_card_url(@heart_shape_herb_card), notice: "Heart shape herb card was successfully created." }
        format.json { render :show, status: :created, location: @heart_shape_herb_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @heart_shape_herb_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heart_shape_herb_cards/1 or /heart_shape_herb_cards/1.json
  def update
    respond_to do |format|
      if @heart_shape_herb_card.update(heart_shape_herb_card_params)
        format.html { redirect_to heart_shape_herb_card_url(@heart_shape_herb_card), notice: "Heart shape herb card was successfully updated." }
        format.json { render :show, status: :ok, location: @heart_shape_herb_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @heart_shape_herb_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heart_shape_herb_cards/1 or /heart_shape_herb_cards/1.json
  def destroy
    @heart_shape_herb_card.destroy!

    respond_to do |format|
      format.html { redirect_to heart_shape_herb_cards_url, notice: "Heart shape herb card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heart_shape_herb_card
      @heart_shape_herb_card = HeartShapeHerbCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def heart_shape_herb_card_params
      params.fetch(:heart_shape_herb_card, {})
    end
end

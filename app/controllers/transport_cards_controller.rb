class TransportCardsController < ApplicationController
  before_action :set_transport_card, only: %i[ show edit update destroy ]

  # GET /transport_cards or /transport_cards.json
  def index
    @transport_cards = TransportCard.all
  end

  # GET /transport_cards/1 or /transport_cards/1.json
  def show
  end

  # GET /transport_cards/new
  def new
    @transport_card = TransportCard.new
  end

  # GET /transport_cards/1/edit
  def edit
  end

  # POST /transport_cards or /transport_cards.json
  def create
    @transport_card = TransportCard.new(transport_card_params)

    respond_to do |format|
      if @transport_card.save
        format.html { redirect_to transport_card_url(@transport_card), notice: "Transport card was successfully created." }
        format.json { render :show, status: :created, location: @transport_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transport_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transport_cards/1 or /transport_cards/1.json
  def update
    respond_to do |format|
      if @transport_card.update(transport_card_params)
        format.html { redirect_to transport_card_url(@transport_card), notice: "Transport card was successfully updated." }
        format.json { render :show, status: :ok, location: @transport_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transport_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transport_cards/1 or /transport_cards/1.json
  def destroy
    @transport_card.destroy!

    respond_to do |format|
      format.html { redirect_to transport_cards_url, notice: "Transport card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transport_card
      @transport_card = TransportCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transport_card_params
      params.fetch(:transport_card, {})
    end
end

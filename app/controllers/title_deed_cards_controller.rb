class TitleDeedCardsController < ApplicationController
  before_action :set_title_deed_card, only: %i[ show edit update destroy ]

  # GET /title_deed_cards or /title_deed_cards.json
  def index
    @title_deed_cards = TitleDeedCard.all
  end

  # GET /title_deed_cards/1 or /title_deed_cards/1.json
  def show
  end

  # GET /title_deed_cards/new
  def new
    @title_deed_card = TitleDeedCard.new
  end

  # GET /title_deed_cards/1/edit
  def edit
  end

  # POST /title_deed_cards or /title_deed_cards.json
  def create
    @title_deed_card = TitleDeedCard.new(title_deed_card_params)

    respond_to do |format|
      if @title_deed_card.save
        format.html { redirect_to title_deed_card_url(@title_deed_card), notice: "Title deed card was successfully created." }
        format.json { render :show, status: :created, location: @title_deed_card }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @title_deed_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /title_deed_cards/1 or /title_deed_cards/1.json
  def update
    respond_to do |format|
      if @title_deed_card.update(title_deed_card_params)
        format.html { redirect_to title_deed_card_url(@title_deed_card), notice: "Title deed card was successfully updated." }
        format.json { render :show, status: :ok, location: @title_deed_card }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @title_deed_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /title_deed_cards/1 or /title_deed_cards/1.json
  def destroy
    @title_deed_card.destroy!

    respond_to do |format|
      format.html { redirect_to title_deed_cards_url, notice: "Title deed card was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_title_deed_card
      @title_deed_card = TitleDeedCard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def title_deed_card_params
      params.fetch(:title_deed_card, {})
    end
end

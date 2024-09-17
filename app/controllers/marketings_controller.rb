class MarketingsController < ApplicationController
  before_action :set_marketing, only: %i[ show edit update destroy ]

  # GET /marketings or /marketings.json
  def index
    @marketings = Marketing.all
  end

  # GET /marketings/1 or /marketings/1.json
  def show
  end

  # GET /marketings/new
  def new
    @marketing = Marketing.new
  end

  # GET /marketings/1/edit
  def edit
  end

  # POST /marketings or /marketings.json
  def create
    @marketing = Marketing.new(marketing_params)

    respond_to do |format|
      if @marketing.save
        format.html { redirect_to marketing_url(@marketing), notice: "Marketing was successfully created." }
        format.json { render :show, status: :created, location: @marketing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /marketings/1 or /marketings/1.json
  def update
    respond_to do |format|
      if @marketing.update(marketing_params)
        format.html { redirect_to marketing_url(@marketing), notice: "Marketing was successfully updated." }
        format.json { render :show, status: :ok, location: @marketing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @marketing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /marketings/1 or /marketings/1.json
  def destroy
    @marketing.destroy!

    respond_to do |format|
      format.html { redirect_to marketings_url, notice: "Marketing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_marketing
      @marketing = Marketing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def marketing_params
      params.fetch(:marketing, {})
    end
end

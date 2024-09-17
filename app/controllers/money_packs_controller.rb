class MoneyPacksController < ApplicationController
  before_action :set_money_pack, only: %i[ show edit update destroy ]

  # GET /money_packs or /money_packs.json
  def index
    @money_packs = MoneyPack.all
  end

  # GET /money_packs/1 or /money_packs/1.json
  def show
  end

  # GET /money_packs/new
  def new
    @money_pack = MoneyPack.new
  end

  # GET /money_packs/1/edit
  def edit
  end

  # POST /money_packs or /money_packs.json
  def create
    @money_pack = MoneyPack.new(money_pack_params)

    respond_to do |format|
      if @money_pack.save
        format.html { redirect_to money_pack_url(@money_pack), notice: "Money pack was successfully created." }
        format.json { render :show, status: :created, location: @money_pack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @money_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_packs/1 or /money_packs/1.json
  def update
    respond_to do |format|
      if @money_pack.update(money_pack_params)
        format.html { redirect_to money_pack_url(@money_pack), notice: "Money pack was successfully updated." }
        format.json { render :show, status: :ok, location: @money_pack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @money_pack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_packs/1 or /money_packs/1.json
  def destroy
    @money_pack.destroy!

    respond_to do |format|
      format.html { redirect_to money_packs_url, notice: "Money pack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_pack
      @money_pack = MoneyPack.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_pack_params
      params.fetch(:money_pack, {})
    end
end

class DatingsController < ApplicationController
  before_action :set_dating, only: %i[ show edit update destroy ]

  # GET /datings or /datings.json
  def index
    @datings = Dating.all
  end

  # GET /datings/1 or /datings/1.json
  def show
  end

  # GET /datings/new
  def new
    @dating = Dating.new
  end

  # GET /datings/1/edit
  def edit
  end

  # POST /datings or /datings.json
  def create
    @dating = Dating.new(dating_params)

    respond_to do |format|
      if @dating.save
        format.html { redirect_to dating_url(@dating), notice: "Dating was successfully created." }
        format.json { render :show, status: :created, location: @dating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datings/1 or /datings/1.json
  def update
    respond_to do |format|
      if @dating.update(dating_params)
        format.html { redirect_to dating_url(@dating), notice: "Dating was successfully updated." }
        format.json { render :show, status: :ok, location: @dating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datings/1 or /datings/1.json
  def destroy
    @dating.destroy!

    respond_to do |format|
      format.html { redirect_to datings_url, notice: "Dating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dating
      @dating = Dating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dating_params
      params.fetch(:dating, {})
    end
end

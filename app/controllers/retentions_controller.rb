class RetentionsController < ApplicationController
  before_action :set_retention, only: %i[ show edit update destroy ]

  # GET /retentions or /retentions.json
  def index
    @retentions = Retention.all
  end

  # GET /retentions/1 or /retentions/1.json
  def show
  end

  # GET /retentions/new
  def new
    @retention = Retention.new
  end

  # GET /retentions/1/edit
  def edit
  end

  # POST /retentions or /retentions.json
  def create
    @retention = Retention.new(retention_params)

    respond_to do |format|
      if @retention.save
        format.html { redirect_to retention_url(@retention), notice: "Retention was successfully created." }
        format.json { render :show, status: :created, location: @retention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @retention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retentions/1 or /retentions/1.json
  def update
    respond_to do |format|
      if @retention.update(retention_params)
        format.html { redirect_to retention_url(@retention), notice: "Retention was successfully updated." }
        format.json { render :show, status: :ok, location: @retention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @retention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retentions/1 or /retentions/1.json
  def destroy
    @retention.destroy!

    respond_to do |format|
      format.html { redirect_to retentions_url, notice: "Retention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retention
      @retention = Retention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def retention_params
      params.fetch(:retention, {})
    end
end

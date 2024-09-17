class StreamingsController < ApplicationController
  before_action :set_streaming, only: %i[ show edit update destroy ]

  # GET /streamings or /streamings.json
  def index
    @streamings = Streaming.all
  end

  # GET /streamings/1 or /streamings/1.json
  def show
  end

  # GET /streamings/new
  def new
    @streaming = Streaming.new
  end

  # GET /streamings/1/edit
  def edit
  end

  # POST /streamings or /streamings.json
  def create
    @streaming = Streaming.new(streaming_params)

    respond_to do |format|
      if @streaming.save
        format.html { redirect_to streaming_url(@streaming), notice: "Streaming was successfully created." }
        format.json { render :show, status: :created, location: @streaming }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @streaming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /streamings/1 or /streamings/1.json
  def update
    respond_to do |format|
      if @streaming.update(streaming_params)
        format.html { redirect_to streaming_url(@streaming), notice: "Streaming was successfully updated." }
        format.json { render :show, status: :ok, location: @streaming }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @streaming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /streamings/1 or /streamings/1.json
  def destroy
    @streaming.destroy!

    respond_to do |format|
      format.html { redirect_to streamings_url, notice: "Streaming was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_streaming
      @streaming = Streaming.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def streaming_params
      params.fetch(:streaming, {})
    end
end

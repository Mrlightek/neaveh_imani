class HumanResourcesController < ApplicationController
  before_action :set_human_resource, only: %i[ show edit update destroy ]

  # GET /human_resources or /human_resources.json
  def index
    @human_resources = HumanResource.all
  end

  # GET /human_resources/1 or /human_resources/1.json
  def show
  end

  # GET /human_resources/new
  def new
    @human_resource = HumanResource.new
  end

  # GET /human_resources/1/edit
  def edit
  end

  # POST /human_resources or /human_resources.json
  def create
    @human_resource = HumanResource.new(human_resource_params)

    respond_to do |format|
      if @human_resource.save
        format.html { redirect_to human_resource_url(@human_resource), notice: "Human resource was successfully created." }
        format.json { render :show, status: :created, location: @human_resource }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @human_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /human_resources/1 or /human_resources/1.json
  def update
    respond_to do |format|
      if @human_resource.update(human_resource_params)
        format.html { redirect_to human_resource_url(@human_resource), notice: "Human resource was successfully updated." }
        format.json { render :show, status: :ok, location: @human_resource }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @human_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /human_resources/1 or /human_resources/1.json
  def destroy
    @human_resource.destroy!

    respond_to do |format|
      format.html { redirect_to human_resources_url, notice: "Human resource was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_human_resource
      @human_resource = HumanResource.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def human_resource_params
      params.fetch(:human_resource, {})
    end
end

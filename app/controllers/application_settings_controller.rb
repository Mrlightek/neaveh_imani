class ApplicationSettingsController < ApplicationController
  #before_action :set_application_setting, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /application_settings or /application_settings.json
  def index
    @application_settings = ApplicationSetting.all
  end

  # GET /application_settings/1 or /application_settings/1.json
  def show
    @application_setting = current_user.application_settings
  end

  # GET /application_settings/new
  def new
    @application_setting = ApplicationSetting.new
  end

  # GET /application_settings/1/edit
  def edit
  end

  # POST /application_settings or /application_settings.json
  def create
    @application_setting = ApplicationSetting.new(application_setting_params)

    respond_to do |format|
      if @application_setting.save
        format.html { redirect_to application_setting_url(@application_setting), notice: "Application setting was successfully created." }
        format.json { render :show, status: :created, location: @application_setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @application_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /application_settings/1 or /application_settings/1.json
  def update
    respond_to do |format|
      if @application_setting.update(application_setting_params)
        format.html { redirect_to application_setting_url(@application_setting), notice: "Application setting was successfully updated." }
        format.json { render :show, status: :ok, location: @application_setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @application_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /application_settings/1 or /application_settings/1.json
  def destroy
    @application_setting.destroy!

    respond_to do |format|
      format.html { redirect_to application_settings_url, notice: "Application setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_application_setting
      @application_setting = ApplicationSetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def application_setting_params
      params.permit(:name, :logo_location, :tag_line, :company_name)
    end
end

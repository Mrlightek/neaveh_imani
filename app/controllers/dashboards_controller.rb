class DashboardsController < ApplicationController
  #before_action :set_dashboard, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /dashboards or /dashboards.json
  def index
    @dashboards = Dashboard.all
  end

  # GET /dashboards/1 or /dashboards/1.json
  def show
    @user = current_user
    @dashboard = @user.dashboard
  end

  # GET /dashboards/new
  def new
    @dashboard = Dashboard.new
  end

  # GET /dashboards/1/edit
  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update(user_params)
      redirect_to @user, notice: 'Profile updated successfully.'
    else
      render :edit
    end
  end

  # POST /dashboards or /dashboards.json
  def create
    @dashboard = Dashboard.new(dashboard_params)

    respond_to do |format|
      if @dashboard.save
        format.html { redirect_to dashboard_url(@dashboard), notice: "Dashboard was successfully created." }
        format.json { render :show, status: :created, location: @dashboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dashboards/1 or /dashboards/1.json
  def update
    respond_to do |format|
      if @dashboard.update(dashboard_params)
        format.html { redirect_to dashboard_url(@dashboard), notice: "Dashboard was successfully updated." }
        format.json { render :show, status: :ok, location: @dashboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @dashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dashboards/1 or /dashboards/1.json
  def destroy
    @dashboard.destroy!

    respond_to do |format|
      format.html { redirect_to dashboards_url, notice: "Dashboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def sign_out_user
    sign_out(current_user)
    redirect_to new_user_session_path # Redirect to Devise's sign-in page
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dashboard
      @dashboard = Dashboard.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dashboard_params
      params.require(:dashboard).permit(:site_visits, :site_sales, :sites_unique_visits, :bounce_rate, :has_message, :has_notification, :name, :profile_pic, :server_status, :cpu_usage, :memory_usage, :disk_usage, :database, :domain, :email_account, :new_reg_users, :sales_status, :recent_article, :statistic_summary, :user_id)
    end
end

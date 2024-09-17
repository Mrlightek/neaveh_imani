class UserSubscribedsController < ApplicationController
  before_action :set_user_subscribed, only: %i[ show edit update destroy ]

  # GET /user_subscribeds or /user_subscribeds.json
  def index
    @user_subscribeds = UserSubscribed.all
  end

  # GET /user_subscribeds/1 or /user_subscribeds/1.json
  def show
  end

  # GET /user_subscribeds/new
  def new
    @user_subscribed = UserSubscribed.new
  end

  # GET /user_subscribeds/1/edit
  def edit
  end

  # POST /user_subscribeds or /user_subscribeds.json
  def create
    @user_subscribed = UserSubscribed.new(user_subscribed_params)

    respond_to do |format|
      if @user_subscribed.save
        format.html { redirect_to user_subscribed_url(@user_subscribed), notice: "User subscribed was successfully created." }
        format.json { render :show, status: :created, location: @user_subscribed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_subscribed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_subscribeds/1 or /user_subscribeds/1.json
  def update
    respond_to do |format|
      if @user_subscribed.update(user_subscribed_params)
        format.html { redirect_to user_subscribed_url(@user_subscribed), notice: "User subscribed was successfully updated." }
        format.json { render :show, status: :ok, location: @user_subscribed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_subscribed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_subscribeds/1 or /user_subscribeds/1.json
  def destroy
    @user_subscribed.destroy!

    respond_to do |format|
      format.html { redirect_to user_subscribeds_url, notice: "User subscribed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subscribed
      @user_subscribed = UserSubscribed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_subscribed_params
      params.require(:user_subscribed).permit(:to, :from)
    end
end

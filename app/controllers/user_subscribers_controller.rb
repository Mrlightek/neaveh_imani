class UserSubscribersController < ApplicationController
  before_action :set_user_subscriber, only: %i[ show edit update destroy ]

  # GET /user_subscribers or /user_subscribers.json
  def index
    @user_subscribers = UserSubscriber.all
  end

  # GET /user_subscribers/1 or /user_subscribers/1.json
  def show
  end

  # GET /user_subscribers/new
  def new
    @user_subscriber = UserSubscriber.new
  end

  # GET /user_subscribers/1/edit
  def edit
  end

  # POST /user_subscribers or /user_subscribers.json
  def create
    @user_subscriber = UserSubscriber.new(user_subscriber_params)

    respond_to do |format|
      if @user_subscriber.save
        format.html { redirect_to user_subscriber_url(@user_subscriber), notice: "User subscriber was successfully created." }
        format.json { render :show, status: :created, location: @user_subscriber }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_subscribers/1 or /user_subscribers/1.json
  def update
    respond_to do |format|
      if @user_subscriber.update(user_subscriber_params)
        format.html { redirect_to user_subscriber_url(@user_subscriber), notice: "User subscriber was successfully updated." }
        format.json { render :show, status: :ok, location: @user_subscriber }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_subscriber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_subscribers/1 or /user_subscribers/1.json
  def destroy
    @user_subscriber.destroy!

    respond_to do |format|
      format.html { redirect_to user_subscribers_url, notice: "User subscriber was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_subscriber
      @user_subscriber = UserSubscriber.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_subscriber_params
      params.require(:user_subscriber).permit(:to, :from)
    end
end

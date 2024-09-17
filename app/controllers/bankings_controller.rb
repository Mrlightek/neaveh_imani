class BankingsController < ApplicationController
  before_action :set_banking, only: %i[ show edit update destroy ]

  # GET /bankings or /bankings.json
  def index
    @bankings = Banking.all
  end

  # GET /bankings/1 or /bankings/1.json
  def show
  end

  # GET /bankings/new
  def new
    @banking = Banking.new
  end

  # GET /bankings/1/edit
  def edit
  end

  # POST /bankings or /bankings.json
  def create
    @banking = Banking.new(banking_params)

    respond_to do |format|
      if @banking.save
        format.html { redirect_to banking_url(@banking), notice: "Banking was successfully created." }
        format.json { render :show, status: :created, location: @banking }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @banking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bankings/1 or /bankings/1.json
  def update
    respond_to do |format|
      if @banking.update(banking_params)
        format.html { redirect_to banking_url(@banking), notice: "Banking was successfully updated." }
        format.json { render :show, status: :ok, location: @banking }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @banking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bankings/1 or /bankings/1.json
  def destroy
    @banking.destroy!

    respond_to do |format|
      format.html { redirect_to bankings_url, notice: "Banking was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banking
      @banking = Banking.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def banking_params
      params.fetch(:banking, {})
    end
end

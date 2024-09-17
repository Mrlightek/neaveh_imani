class CustomerServicesController < ApplicationController
  before_action :set_customer_service, only: %i[ show edit update destroy ]

  # GET /customer_services or /customer_services.json
  def index
    @customer_services = CustomerService.all
  end

  # GET /customer_services/1 or /customer_services/1.json
  def show
  end

  # GET /customer_services/new
  def new
    @customer_service = CustomerService.new
  end

  # GET /customer_services/1/edit
  def edit
  end

  # POST /customer_services or /customer_services.json
  def create
    @customer_service = CustomerService.new(customer_service_params)

    respond_to do |format|
      if @customer_service.save
        format.html { redirect_to customer_service_url(@customer_service), notice: "Customer service was successfully created." }
        format.json { render :show, status: :created, location: @customer_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @customer_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_services/1 or /customer_services/1.json
  def update
    respond_to do |format|
      if @customer_service.update(customer_service_params)
        format.html { redirect_to customer_service_url(@customer_service), notice: "Customer service was successfully updated." }
        format.json { render :show, status: :ok, location: @customer_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @customer_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_services/1 or /customer_services/1.json
  def destroy
    @customer_service.destroy!

    respond_to do |format|
      format.html { redirect_to customer_services_url, notice: "Customer service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_service
      @customer_service = CustomerService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_service_params
      params.fetch(:customer_service, {})
    end
end

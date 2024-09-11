class ProductPagesController < ApplicationController
  before_action :set_product_page, only: %i[ show edit update destroy ]

  # GET /product_pages or /product_pages.json
  def index
    @product_pages = ProductPage.all
  end

  # GET /product_pages/1 or /product_pages/1.json
  def show
  end

  # GET /product_pages/new
  def new
    @product_page = ProductPage.new
  end

  # GET /product_pages/1/edit
  def edit
  end

  # POST /product_pages or /product_pages.json
  def create
    @product_page = ProductPage.new(product_page_params)

    respond_to do |format|
      if @product_page.save
        format.html { redirect_to product_page_url(@product_page), notice: "Product page was successfully created." }
        format.json { render :show, status: :created, location: @product_page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_pages/1 or /product_pages/1.json
  def update
    respond_to do |format|
      if @product_page.update(product_page_params)
        format.html { redirect_to product_page_url(@product_page), notice: "Product page was successfully updated." }
        format.json { render :show, status: :ok, location: @product_page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_pages/1 or /product_pages/1.json
  def destroy
    @product_page.destroy!

    respond_to do |format|
      format.html { redirect_to product_pages_url, notice: "Product page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_page
      @product_page = ProductPage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def product_page_params
      params.require(:product_page).permit(:name, :description, :price)
    end
end

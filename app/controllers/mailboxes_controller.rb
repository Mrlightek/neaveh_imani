class MailboxesController < ApplicationController
  before_action :set_mailbox, only: %i[ show edit update destroy ]

  # GET /mailboxes or /mailboxes.json
  def index
    @mailboxes = Mailbox.all
  end

  # GET /mailboxes/1 or /mailboxes/1.json
  def show
  end

  # GET /mailboxes/new
  def new
    @mailbox = Mailbox.new
  end

  # GET /mailboxes/1/edit
  def edit
  end

  # POST /mailboxes or /mailboxes.json
  def create
    @mailbox = Mailbox.new(mailbox_params)

    respond_to do |format|
      if @mailbox.save
        format.html { redirect_to mailbox_url(@mailbox), notice: "Mailbox was successfully created." }
        format.json { render :show, status: :created, location: @mailbox }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mailbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mailboxes/1 or /mailboxes/1.json
  def update
    respond_to do |format|
      if @mailbox.update(mailbox_params)
        format.html { redirect_to mailbox_url(@mailbox), notice: "Mailbox was successfully updated." }
        format.json { render :show, status: :ok, location: @mailbox }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mailbox.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailboxes/1 or /mailboxes/1.json
  def destroy
    @mailbox.destroy!

    respond_to do |format|
      format.html { redirect_to mailboxes_url, notice: "Mailbox was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mailbox
      @mailbox = Mailbox.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mailbox_params
      params.fetch(:mailbox, {})
    end
end

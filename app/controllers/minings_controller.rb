class MiningsController < ApplicationController
  before_action :set_mining, only: %i[ show edit update destroy ]

  # GET /minings or /minings.json
  def index
    @minings = Mining.all
  end

  # GET /minings/1 or /minings/1.json
  def show
  end

  # GET /minings/new
  def new
    @mining = Mining.new
  end

  # GET /minings/1/edit
  def edit
  end

  # POST /minings or /minings.json
  def create
    @mining = Mining.new(mining_params)

    respond_to do |format|
      if @mining.save
        format.html { redirect_to @mining, notice: "Mining was successfully created." }
        format.json { render :show, status: :created, location: @mining }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mining.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /minings/1 or /minings/1.json
  def update
    respond_to do |format|
      if @mining.update(mining_params)
        format.html { redirect_to @mining, notice: "Mining was successfully updated." }
        format.json { render :show, status: :ok, location: @mining }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mining.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /minings/1 or /minings/1.json
  def destroy
    @mining.destroy
    respond_to do |format|
      format.html { redirect_to minings_url, notice: "Mining was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mining
      @mining = Mining.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mining_params
      params.require(:mining).permit(:description, :acronym)
    end
end

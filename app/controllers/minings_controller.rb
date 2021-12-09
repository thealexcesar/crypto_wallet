class MiningsController < ApplicationController
  before_action :set_mining, only: %i[ show edit update destroy ]
  # before_action :set_coins_used, except: [:destroy]

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
        format.html { redirect_to @mining, notice: (t'notice_mining.create') }
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
        format.html { redirect_to @mining, notice: (t'notice_mining.update') }
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
      format.html { redirect_to minings_url, notice: (t'notice_mining.destroy') }
      format.json { head :no_content }
    end
  rescue
    redirect_to mining_path, alert: 'forbiden!'
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_mining
    @mining = Mining.find(params[:id])
    # @coin = @mining.coin.coin_name
  end

  # def set_coins_used
  #   @coins_used_here = Coin.all.map(&:coin_name)
  # end

  # Only allow a list of trusted parameters through.
  def mining_params
    params.require(:mining).permit(:description, :acronym, :coin_name)
  end
end

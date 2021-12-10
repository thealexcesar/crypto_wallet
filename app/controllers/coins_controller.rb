class CoinsController < ApplicationController
  before_action :set_coin, only: %i[ show edit update destroy ]
  before_action :set_mining_type, except: [:destroy]
  # GET /coins or /coins.json
  def index
    @coins = Coin.all
  end

  # GET /coins/1 or /coins/1.json
  def show
  end

  # GET /coins/new
  def new
    @coin = Coin.new
  end

  # GET /coins/1/edit
  def edit

  end

  # POST /coins or /coins.json
  def create
    @coin = Coin.new(coin_params)
    respond_to do |format|
      if @coin.save
        format.html { redirect_to @coin, notice: (t'notice_coin.create') }
        format.json { render :show, status: :created, location: @coin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
    rescue
      redirect_to new_coin_path, alert: (t'message.all_fields')
  end

  # PATCH/PUT /coins/1 or /coins/1.json
  def update
    respond_to do |format|
      if @coin.update(coin_params)
        format.html { redirect_to @coin, notice: (t'notice_coin.update') }
        format.json { render :show, status: :ok, location: @coin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @coin.errors, status: :unprocessable_entity }
      end
    end
    rescue
      redirect_to edit_coin_path, alert: (t'message.all_fields')
  end

  # DELETE /coins/1 or /coins/1.json
  def destroy
    @coin.destroy
    respond_to do |format|
      format.html { redirect_to coins_url, notice: (t'notice_coin.destroy') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coin
      @coin = Coin.find(params[:id])
      @mining = Coin.find(params[:id]).mining.description
    end

  def set_mining_type
    @mining_type = Mining.all.pluck(:description, :id)
  end

    # Only allow a list of trusted parameters through.
    def coin_params
      params.require(:coin).permit(:coin_name, :acronym, :url_image, :mining_id)
    end
end

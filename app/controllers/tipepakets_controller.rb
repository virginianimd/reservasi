class TipepaketsController < ApplicationController
  before_action :set_tipepaket, only: [:show, :edit, :update, :destroy]

  # GET /tipepakets
  # GET /tipepakets.json
  def index
    @tipepakets = Tipepaket.all
  end

  # GET /tipepakets/1
  # GET /tipepakets/1.json
  def show
  end

  # GET /tipepakets/new
  def new
    @tipepaket = Tipepaket.new
  end

  # GET /tipepakets/1/edit
  def edit
  end

  # POST /tipepakets
  # POST /tipepakets.json
  def create
    @tipepaket = Tipepaket.new(tipepaket_params)

    respond_to do |format|
      if @tipepaket.save
        format.html { redirect_to @tipepaket, notice: 'Data Tipe Paket Berhasil Dbuat.' }
        format.json { render :show, status: :created, location: @tipepaket }
      else
        format.html { render :new }
        format.json { render json: @tipepaket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipepakets/1
  # PATCH/PUT /tipepakets/1.json
  def update
    respond_to do |format|
      if @tipepaket.update(tipepaket_params)
        format.html { redirect_to @tipepaket, notice: 'Data Tipe Paket Berhasil Diubah.' }
        format.json { render :show, status: :ok, location: @tipepaket }
      else
        format.html { render :edit }
        format.json { render json: @tipepaket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipepakets/1
  # DELETE /tipepakets/1.json
  def destroy
    @tipepaket.destroy
    respond_to do |format|
      format.html { redirect_to tipepakets_url, notice: 'Data Tipe Paket Berhasil Dihapus.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipepaket
      @tipepaket = Tipepaket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipepaket_params
      params.require(:tipepaket).permit(:namaaktifitas, :harga, :include, :exclude, :jenispaket, :supplier_id)
    end
end

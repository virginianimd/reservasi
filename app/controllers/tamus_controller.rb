class TamusController < ApplicationController
  before_action :set_tamu, only: [:show, :edit, :update, :destroy]

  # GET /tamus
  # GET /tamus.json
  def index
    @tamus = Tamu.all
  end

  # GET /tamus/1
  # GET /tamus/1.json
  def show
  end

  # GET /tamus/new
  def new
    @tamu = Tamu.new
  end

  # GET /tamus/1/edit
  def edit
  end

  # POST /tamus
  # POST /tamus.json
  def create
    @tamu = Tamu.new(tamu_params)

    respond_to do |format|
      if @tamu.save
        format.html { redirect_to @tamu, notice: 'Tamu Berhasil Ditambahkan.' }
        format.json { render :show, status: :created, location: @tamu }
      else
        format.html { render :new }
        format.json { render json: @tamu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tamus/1
  # PATCH/PUT /tamus/1.json
  def update
    respond_to do |format|
      if @tamu.update(tamu_params)
        format.html { redirect_to @tamu, notice: 'Tamu Berhasil Diubah.' }
        format.json { render :show, status: :ok, location: @tamu }
      else
        format.html { render :edit }
        format.json { render json: @tamu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tamus/1
  # DELETE /tamus/1.json
  def destroy
    @tamu.destroy
    respond_to do |format|
      format.html { redirect_to tamus_url, notice: 'Tamu Berhasil Dihapus.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tamu
      @tamu = Tamu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tamu_params
      params.require(:tamu).permit(:kodebooking, :namatamu, :qty, :tglaktifitas, :hotel, :negara, :telp, :email, :driver, :note, :jenispaket, :namaaktifitas, :supplier, :tipepaket_id)
    end
end

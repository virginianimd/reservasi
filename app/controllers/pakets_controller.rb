class PaketsController < ApplicationController
  before_action :set_paket, only: [:show, :edit, :update, :destroy]

  # GET /pakets
  # GET /pakets.json
  def index
    @pakets = Paket.all
  end

  # GET /pakets/1
  # GET /pakets/1.json
  def show
  end

  # GET /pakets/new
  def new
    @paket = Paket.new
  end

  # GET /pakets/1/edit
  def edit
  end

  # POST /pakets
  # POST /pakets.json
  def create
    @paket = Paket.new(paket_params)

    respond_to do |format|
      if @paket.save
        format.html { redirect_to @paket, notice: 'Paket was successfully created.' }
        format.json { render :show, status: :created, location: @paket }
      else
        format.html { render :new }
        format.json { render json: @paket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pakets/1
  # PATCH/PUT /pakets/1.json
  def update
    respond_to do |format|
      if @paket.update(paket_params)
        format.html { redirect_to @paket, notice: 'Paket was successfully updated.' }
        format.json { render :show, status: :ok, location: @paket }
      else
        format.html { render :edit }
        format.json { render json: @paket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pakets/1
  # DELETE /pakets/1.json
  def destroy
    @paket.destroy
    respond_to do |format|
      format.html { redirect_to pakets_url, notice: 'Paket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paket
      @paket = Paket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paket_params
      params.require(:paket).permit(:jenispaket, :desk)
    end
end

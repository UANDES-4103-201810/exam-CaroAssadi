class DeliveryinfosController < ApplicationController
  before_action :set_deliveryinfo, only: [:show, :edit, :update, :destroy]

  # GET /deliveryinfos
  # GET /deliveryinfos.json
  def index
    @deliveryinfos = Deliveryinfo.all
  end

  # GET /deliveryinfos/1
  # GET /deliveryinfos/1.json
  def show
  end

  # GET /deliveryinfos/new
  def new
    @deliveryinfo = Deliveryinfo.new
  end

  # GET /deliveryinfos/1/edit
  def edit
  end

  # POST /deliveryinfos
  # POST /deliveryinfos.json
  def create
    @deliveryinfo = Deliveryinfo.new(deliveryinfo_params)

    respond_to do |format|
      if @deliveryinfo.save
        format.html { redirect_to @deliveryinfo, notice: 'Deliveryinfo was successfully created.' }
        format.json { render :show, status: :created, location: @deliveryinfo }
      else
        format.html { render :new }
        format.json { render json: @deliveryinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deliveryinfos/1
  # PATCH/PUT /deliveryinfos/1.json
  def update
    respond_to do |format|
      if @deliveryinfo.update(deliveryinfo_params)
        format.html { redirect_to @deliveryinfo, notice: 'Deliveryinfo was successfully updated.' }
        format.json { render :show, status: :ok, location: @deliveryinfo }
      else
        format.html { render :edit }
        format.json { render json: @deliveryinfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deliveryinfos/1
  # DELETE /deliveryinfos/1.json
  def destroy
    @deliveryinfo.destroy
    respond_to do |format|
      format.html { redirect_to deliveryinfos_url, notice: 'Deliveryinfo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deliveryinfo
      @deliveryinfo = Deliveryinfo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deliveryinfo_params
      params.require(:deliveryinfo).permit(:address1, :address2, :phone, :order_id)
    end
end

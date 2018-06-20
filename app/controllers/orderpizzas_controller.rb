class OrderpizzasController < ApplicationController
  before_action :set_orderpizza, only: [:show, :edit, :update, :destroy]

  # GET /orderpizzas
  # GET /orderpizzas.json
  def index
    @orderpizzas = Orderpizza.all
  end

  # GET /orderpizzas/1
  # GET /orderpizzas/1.json
  def show
  end

  # GET /orderpizzas/new
  def new
    @orderpizza = Orderpizza.new
  end

  # GET /orderpizzas/1/edit
  def edit
  end

  # POST /orderpizzas
  # POST /orderpizzas.json
  def create
    @orderpizza = Orderpizza.new(orderpizza_params)

    respond_to do |format|
      if @orderpizza.save
        format.html { redirect_to @orderpizza, notice: 'Orderpizza was successfully created.' }
        format.json { render :show, status: :created, location: @orderpizza }
      else
        format.html { render :new }
        format.json { render json: @orderpizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderpizzas/1
  # PATCH/PUT /orderpizzas/1.json
  def update
    respond_to do |format|
      if @orderpizza.update(orderpizza_params)
        format.html { redirect_to @orderpizza, notice: 'Orderpizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderpizza }
      else
        format.html { render :edit }
        format.json { render json: @orderpizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderpizzas/1
  # DELETE /orderpizzas/1.json
  def destroy
    @orderpizza.destroy
    respond_to do |format|
      format.html { redirect_to orderpizzas_url, notice: 'Orderpizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderpizza
      @orderpizza = Orderpizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderpizza_params
      params.require(:orderpizza).permit(:payment, :pizza_id, :order_id)
    end
end

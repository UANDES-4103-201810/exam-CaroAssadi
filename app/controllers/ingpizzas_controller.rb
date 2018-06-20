class IngpizzasController < ApplicationController
  before_action :set_ingpizza, only: [:show, :edit, :update, :destroy]

  # GET /ingpizzas
  # GET /ingpizzas.json
  def index
    @ingpizzas = Ingpizza.all
  end

  # GET /ingpizzas/1
  # GET /ingpizzas/1.json
  def show
  end

  # GET /ingpizzas/new
  def new
    @ingpizza = Ingpizza.new
  end

  # GET /ingpizzas/1/edit
  def edit
  end

  # POST /ingpizzas
  # POST /ingpizzas.json
  def create
    @ingpizza = Ingpizza.new(ingpizza_params)

    respond_to do |format|
      if @ingpizza.save
        format.html { redirect_to @ingpizza, notice: 'Ingpizza was successfully created.' }
        format.json { render :show, status: :created, location: @ingpizza }
      else
        format.html { render :new }
        format.json { render json: @ingpizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingpizzas/1
  # PATCH/PUT /ingpizzas/1.json
  def update
    respond_to do |format|
      if @ingpizza.update(ingpizza_params)
        format.html { redirect_to @ingpizza, notice: 'Ingpizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingpizza }
      else
        format.html { render :edit }
        format.json { render json: @ingpizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingpizzas/1
  # DELETE /ingpizzas/1.json
  def destroy
    @ingpizza.destroy
    respond_to do |format|
      format.html { redirect_to ingpizzas_url, notice: 'Ingpizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingpizza
      @ingpizza = Ingpizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingpizza_params
      params.require(:ingpizza).permit(:ingredient_id, :pizza_id)
    end
end

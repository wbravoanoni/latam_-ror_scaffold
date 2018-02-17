class PerrosController < ApplicationController
  before_action :set_perro, only: [:show, :edit, :update, :destroy]

  # GET /perros
  # GET /perros.json
  def index
    @perros = Perro.all
  end

  # GET /perros/1
  # GET /perros/1.json
  def show
  end

  # GET /perros/new
  def new
    @perro = Perro.new
  end

  # GET /perros/1/edit
  def edit
  end

  # POST /perros
  # POST /perros.json
  def create
    @perro = Perro.new(perro_params)

    respond_to do |format|
      if @perro.save
        format.html { redirect_to @perro, notice: 'Perro was successfully created.' }
        format.json { render :show, status: :created, location: @perro }
      else
        format.html { render :new }
        format.json { render json: @perro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /perros/1
  # PATCH/PUT /perros/1.json
  def update
    respond_to do |format|
      if @perro.update(perro_params)
        format.html { redirect_to @perro, notice: 'Perro was successfully updated.' }
        format.json { render :show, status: :ok, location: @perro }
      else
        format.html { render :edit }
        format.json { render json: @perro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /perros/1
  # DELETE /perros/1.json
  def destroy
    @perro.destroy
    respond_to do |format|
      format.html { redirect_to perros_url, notice: 'Perro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_perro
      @perro = Perro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def perro_params
      params.require(:perro).permit(:nombre, :imagen, :descripcion, :edad)
    end
end

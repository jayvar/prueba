class CocherasController < ApplicationController
  before_action :set_cochera, only: [:show, :edit, :update, :destroy]

  # GET /cocheras
  # GET /cocheras.json
  def index
    @cocheras = Cochera.all
  end

  # GET /cocheras/1
  # GET /cocheras/1.json
  def show
  end

  # GET /cocheras/new
  def new
    @cochera = Cochera.new
  end

  # GET /cocheras/1/edit
  def edit
  end

  # POST /cocheras
  # POST /cocheras.json
  def create
    @cochera = Cochera.new(cochera_params)

    respond_to do |format|
      if @cochera.save
        format.html { redirect_to @cochera, notice: 'Cochera was successfully created.' }
        format.json { render :show, status: :created, location: @cochera }
      else
        format.html { render :new }
        format.json { render json: @cochera.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cocheras/1
  # PATCH/PUT /cocheras/1.json
  def update
    respond_to do |format|
      if @cochera.update(cochera_params)
        format.html { redirect_to @cochera, notice: 'Cochera was successfully updated.' }
        format.json { render :show, status: :ok, location: @cochera }
      else
        format.html { render :edit }
        format.json { render json: @cochera.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cocheras/1
  # DELETE /cocheras/1.json
  def destroy
    @cochera.destroy
    respond_to do |format|
      format.html { redirect_to cocheras_url, notice: 'Cochera was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cochera
      @cochera = Cochera.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cochera_params
      params.require(:cochera).permit(:name, :description)
    end
end

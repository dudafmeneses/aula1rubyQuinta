class DesenhosController < ApplicationController
  before_action :set_desenho, only: %i[ show edit update destroy ]

  # GET /desenhos or /desenhos.json
  def index
    @desenhos = Desenho.all
  end

  # GET /desenhos/1 or /desenhos/1.json
  def show
  end

  # GET /desenhos/new
  def new
    @desenho = Desenho.new
  end

  # GET /desenhos/1/edit
  def edit
  end

  # POST /desenhos or /desenhos.json
  def create
    @desenho = Desenho.new(desenho_params)

    respond_to do |format|
      if @desenho.save
        format.html { redirect_to desenho_url(@desenho), notice: "Desenho was successfully created." }
        format.json { render :show, status: :created, location: @desenho }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @desenho.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /desenhos/1 or /desenhos/1.json
  def update
    respond_to do |format|
      if @desenho.update(desenho_params)
        format.html { redirect_to desenho_url(@desenho), notice: "Desenho was successfully updated." }
        format.json { render :show, status: :ok, location: @desenho }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @desenho.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /desenhos/1 or /desenhos/1.json
  def destroy
    @desenho.destroy

    respond_to do |format|
      format.html { redirect_to desenhos_url, notice: "Desenho was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_desenho
      @desenho = Desenho.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def desenho_params
      params.require(:desenho).permit(:nome, :dataDeLancamento, :episodios, :descricao, :diretor)
    end
end

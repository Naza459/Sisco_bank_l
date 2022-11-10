class UserEsController < ApplicationController
  before_action :set_user_e, only: %i[ show edit update destroy ]

  # GET /user_es or /user_es.json
  def index
    @user_es = UserE.all
  end

  # GET /user_es/1 or /user_es/1.json
  def show
  end

  # GET /user_es/new
  def new
    @user_e = UserE.new
  end

  # GET /user_es/1/edit
  def edit
  end

  # POST /user_es or /user_es.json
  def create
    @user_e = UserE.new(user_e_params)

    respond_to do |format|
      if @user_e.save
        format.html { redirect_to user_e_url(@user_e), notice: "El usuario se creó con éxito." }
        format.json { render :show, status: :created, location: @user_e }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_e.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_es/1 or /user_es/1.json
  def update
    respond_to do |format|
      if @user_e.update(user_e_params)
        format.html { redirect_to user_e_url(@user_e), notice: "El usuario se actualizó con éxito." }
        format.json { render :show, status: :ok, location: @user_e }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_e.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_es/1 or /user_es/1.json
  def destroy
    @user_e.destroy

    respond_to do |format|
      format.html { redirect_to user_es_url, notice: "El usuario fue eliminado con éxito." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_e
      @user_e = UserE.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_e_params
      params.require(:user_e).permit(:tipo_persona, :numero_documento, :fecha_inicial, :fecha_vencimiento, :nombre, :correo_electronico, :telefono_principal, :telefono_secundario)
    end
end

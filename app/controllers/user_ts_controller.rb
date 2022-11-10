class UserTsController < ApplicationController
  before_action :set_user_t, only: %i[ show edit update destroy ]

  # GET /user_ts or /user_ts.json
  def index
    @user_ts = UserT.all
  end

  # GET /user_ts/1 or /user_ts/1.json
  def show
  end

  # GET /user_ts/new
  def new
    @user_t = UserT.new
  end

  # GET /user_ts/1/edit
  def edit
  end

  # POST /user_ts or /user_ts.json
  def create
    @user_t = UserT.new(user_t_params)

    respond_to do |format|
      if @user_t.save
        format.html { redirect_to user_t_url(@user_t), notice: "User t was successfully created." }
        format.json { render :show, status: :created, location: @user_t }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_ts/1 or /user_ts/1.json
  def update
    respond_to do |format|
      if @user_t.update(user_t_params)
        format.html { redirect_to user_t_url(@user_t), notice: "User t was successfully updated." }
        format.json { render :show, status: :ok, location: @user_t }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_t.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_ts/1 or /user_ts/1.json
  def destroy
    @user_t.destroy

    respond_to do |format|
      format.html { redirect_to user_ts_url, notice: "User t was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_t
      @user_t = UserT.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_t_params
      params.require(:user_t).permit(:tipo_persona, :numero_documento, :fecha_inicial, :fecha_vencimiento, :nombre, :correo_electronico, :telefono_principal, :telefono_secundario)
    end
end

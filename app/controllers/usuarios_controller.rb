class UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.all
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy!
    redirect_to usuarios_url, notice: "Usuario was successfully destroyed.", status: :see_other
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_usuario
    @usuario = Usuario.find(params[:id])
  end
end

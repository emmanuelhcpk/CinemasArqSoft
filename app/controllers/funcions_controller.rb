class FuncionsController < ApplicationController
  before_action :set_funcion, only: [:show, :edit, :update, :destroy]
 before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
 
  respond_to :html

  def index
    @funcions = Funcion.all
    respond_with(@funcions)
  end

  def show
    respond_with(@funcion)
    @reserva=current_socio.reservas.build()
  end

  def new
    @funcion = Funcion.new
    respond_with(@funcion)
  end

  def edit
  end

  def create
    @funcion = Funcion.new(funcion_params)
    if @funcion.valid?
    @funcion.save
    respond_with(@funcion)
  else
    
  end
  
  end

  def update
    @funcion.update(funcion_params)
    respond_with(@funcion)
  end

  def destroy
    @funcion.destroy
    respond_with(@funcion)
  end

  private
  
    def set_funcion
      @funcion = Funcion.find(params[:id])
    end

    def funcion_params
        params.require(:funcion).permit(:cartelera_id,:sala_id)
    end
    
end

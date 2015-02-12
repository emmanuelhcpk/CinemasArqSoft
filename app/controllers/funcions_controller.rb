class FuncionsController < ApplicationController
  before_action :set_funcion, only: [:show, :edit, :update, :destroy]
 before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
  before_action :validar_pelicula, only: [:new, :show,:create,:edit, :update, :destroy]
 
  respond_to :html

  def index
    @funcions = Funcion.all
    respond_with(@funcions)
  end

  def show
    
    @funcion = Funcion.find(params[:id])
    
    if @funcion.sala.sillas.empty? == true
      
      redirect_to @funcion.sala
    end
    @reserva=@funcion.reservas.build
    @sillas= @funcion.sala.sillas.all
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

class SalasController < ApplicationController
     before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
    def show
        @sala = Sala.find(params[:id])
        @silla= @sala.sillas.build
        @funcion = @sala.funcions.build
        sede = @sala.sede
        @peliculas= sede.carteleras
    end
    
    def new
        @sala = Sala.new
    end
    
    def mostrar
        @salas = Sala.all

    end
    
    def index
        @salas = Sala.all

    end
    
    def create
        @sala = Sala.new(sala_params)
        if @sala.valid?
            @sala.save
            redirect_to @sala
        else
           redirect_to root_path 
        end
    end
    def sala_params
        params.require(:sala).permit(:nro_sala, :capacidad, :sede_id)
    end
end

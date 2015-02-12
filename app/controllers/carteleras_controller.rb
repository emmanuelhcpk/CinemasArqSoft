class CartelerasController < ApplicationController
     before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
      before_action :validar_pelicula, only: [:new, :show,:create,:edit, :update, :destroy]
    def show
        @cartelera = Cartelera.find(params[:id])
    end
    
    def new
        @cartelera= Cartelera.new
    end
    
  
    def create
        @cartelera= Cartelera.new(sala_params)
        if @cartelera.valid?
            @cartelera.save
            sede = @cartelera.sede
            redirect_to sede
        else
          # redirect_to root_path 
        end
    end
    def sala_params
        params.require(:cartelera).permit(:fecha_inicial, :fecha_final,
        :tipo_visualizacion,:sede_id,:pelicula_id)
    end
end

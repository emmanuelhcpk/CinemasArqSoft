class SedesController < ApplicationController
    
     before_action :permisos_administrador?, only: [:new,:create,:edit, :update, :destroy]
      before_action :validar_pelicula, only: [:show,:create,:edit, :update, :destroy]
   def show
       
       @sede = Sede.find(params[:id])
       
       @sala = @sede.salas.build
       @peliculas= Pelicula.all
       @cartelera=@sede.carteleras.build
   end
   
    def new
        @sede = Sede.new
        @ciudades = Ciudad.all
        
    end
    
    def index
        @sede = Sede.all
        @ciudades = Ciudad.all
    end
    
     def create
        @sede = Sede.new(sede_params)
        if @sede.valid?
            @sede.save
            redirect_to @sede
        else
           redirect_to  error_path
        end
    end 
    
    def destroy
        @sede = Sede.find(params[:id])
        @sede.destroy
    
     end
    
    private
    def sede_params# permito cuales son los campos permitdos que me envian en un formulario
      params.require(:sede).permit(:nombre, :descripcion, :telefono,
                                   :direccion,:ciudad_id)
    end
 end


class PeliculasController < ApplicationController
     
     before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
    
    def show
        @pelicula = Pelicula.find(params[:id])
    end
    
    def new
        @pelicula = Pelicula.new
    end
    
    def mostrar
        @peliculas = Pelicula.all

    end
    
    def index
        @peliculas = Pelicula.all
    end
    
    def create
        @pelicula = Pelicula.new(pelicula_params)
        if @pelicula.valid?
            @pelicula.save
            redirect_to @pelicula
        else
           #redirect_to root_path 
        end
    end 
    
    private
    
    def pelicula_params# permito cuales son los campos permitdos que me envian en un formulario
      params.require(:pelicula).permit(:nombre, :nombre_director,:poster,:genero,:descripcion)
    end
    
end

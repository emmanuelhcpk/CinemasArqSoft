class CiudadsController < ApplicationController
    
before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
    def show
        @ciudad = Ciudad.find(params[:id])
    end
    
    def new
        @ciudad = Ciudad.new
    end
    
    def mostrar
        @ciudads = Ciudad.all

    end
    
    def create
        @ciudad = Ciudad.new(ciudad_params)
        if @ciudad.valid?
            @ciudad.save
            redirect_to @ciudad
        else
           redirect_to root_path 
        end
    end
    def ciudad_params
        params.require(:ciudad).permit(:nombre)
    end
end

class SillasController < ApplicationController
    
     before_action :permisos_administrador?, only: [:new, :create,:edit, :update, :destroy]
     
    def new
        @silla = Silla.new
    
        respond_to do |wants|
            wants.html # new.html.erb
            wants.xml  { render :xml => @silla }
        end
    end
    
    def create
        @silla = Silla.new(silla_params)
    
        if @silla.valid?
            @silla.save
            #redirect_to 
        else
           #redirect_to  
        end
    end
    
    private
    def silla_params# permito cuales son los campos permitdos que me envian en un formulario
      params.require(:silla).permit(:tipo_silla, :sala_id)
    end

end

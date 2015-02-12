class ReservasController < ApplicationController
    
    def create
        @reserva = Reserva.new(reserva_params)
        if   @reserva.valid?
            @reserva.save
            funcion=@reserva.funcion
             redirect_to funcion
        else
            redirect_to error_path
        end
        
    end
    
    def show
        
    end
    
    def index
        @reservas = @current_socio.Reservas
    end
    
    def destroy
        @reserva = Reserva.find(params[:id])
        funcion=@reserva.funcion
        @reserva.destroy
    redirect_to funcion
      
    end
    
private
    def reserva_params
        params.require(:reserva).permit(:fecha_hora,:asistente_id,:silla_reservada_id,:funcion_id)
    end
end

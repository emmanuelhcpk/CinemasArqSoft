class ReservasController < ApplicationController
    
    def create
        @reserva = Reserva.new(reserva_params)
        if   @reserva.valid?
            @reserva.save
        else
            
        end
        
    end
    
    
    
private
    def reserva_params
        params.require(:funcion).permit(:fecha_hora,:asistente_id,:silla_reservada_id,:funcion_id)
    end
end

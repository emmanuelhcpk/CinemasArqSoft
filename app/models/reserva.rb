class Reserva < ActiveRecord::Base
    
    belongs_to :funcion
    belongs_to :asistente, class_name: "Socio"
    belongs_to :silla_reservada, class_name: "Silla"
end

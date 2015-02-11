class Funcion < ActiveRecord::Base
    has_many :reservas
    belongs_to :cartelera
    belongs_to :sala
   
end


class Silla < ActiveRecord::Base
    belongs_to :sala
    
    
  has_many :reservas, :foreign_key => "silla_reservada_id"
  has_many :asistentes, :through => :reservas
  
end

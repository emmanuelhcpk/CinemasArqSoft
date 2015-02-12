class Socio < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :reservas, :foreign_key => :asistente_id
  has_many :silla_reservadas, :through => :reservas
  
  def reservado?(funcion)
   # if self.reservas.find_by(:funcion_id => funcion.id)
  if self.reservas.exists?(:funcion_id => funcion.id)
      return true
    else
      return false
    end
  end

end

class Socio < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :reservas, :foreign_key => :asistente_id
  has_many :silla_reservadas, :through => :reservas
end

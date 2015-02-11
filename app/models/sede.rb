class Sede < ActiveRecord::Base
    has_many :salas
    belongs_to :ciudad
    has_many :carteleras
end

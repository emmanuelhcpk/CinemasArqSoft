class Cartelera < ActiveRecord::Base
      has_many :funcions
      belongs_to :pelicula
      belongs_to :sede
end

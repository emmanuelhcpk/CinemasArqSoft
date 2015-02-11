class Pelicula < ActiveRecord::Base
    #uploader de la imagen 
    mount_uploader :poster, PosterUploader
    
    #asociaciones
    has_many :carteleras
    
    #validaciones
    validates :nombre, presence: true
    validates :nombre_director, presence: true
    validates :descripcion, presence: true
    validates :genero, presence: true
    before_save{ guardar_nombre }
    #metodos
    def guardar_nombre
        
        self.nombre.capitalize!
    
    end
    
end

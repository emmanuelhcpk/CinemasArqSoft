class ClavesForaneas < ActiveRecord::Migration
  def change
    #muchos a muchos
     add_column :reservas,:asistente_id,:integer
     add_column :reservas,:silla_reservada_id,:integer
     
     #fin muchos
     
     
     add_column :salas,:sede_id,:integer 
     add_column :sillas,:sala_id,:integer
     add_column :carteleras,:sede_id,:integer
     add_column :carteleras,:pelicula_id,:integer
     add_column :sedes,:ciudad_id,:integer
     add_column :reservas,:funcion_id,:integer
     
     
     add_column :funcions,:cartelera_id,:integer
  end 
end

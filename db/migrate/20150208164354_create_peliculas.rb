class CreatePeliculas < ActiveRecord::Migration
  def change
    create_table :peliculas do |t|
      t.string :nombre
      t.string :nombre_director
      t.string :descripcion
      t.integer :duracion
      t.string :genero
      t.string :idioma
      t.string :clasificacion
      t.boolean :subtitulada
      t.timestamps
    end
  end
end

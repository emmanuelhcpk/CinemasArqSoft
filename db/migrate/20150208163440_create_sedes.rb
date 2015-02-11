class CreateSedes < ActiveRecord::Migration
  def change
    create_table :sedes do |t|
      #No asignar claves foráneas
      #Claves foráneas: Ciudad
      t.string :descripcion
      t.string :telefono
      t.string :direccion
      t.string :nombre
      t.timestamps
    end
  end
end

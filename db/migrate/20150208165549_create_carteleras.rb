class CreateCarteleras < ActiveRecord::Migration
  def change
    create_table :carteleras do |t|
      t.datetime :fecha_inicial 
      t.datetime :fecha_final
      t.string   :tipo_visualizacion
      t.timestamps
    end
  end
end

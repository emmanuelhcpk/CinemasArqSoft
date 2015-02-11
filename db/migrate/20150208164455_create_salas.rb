class CreateSalas < ActiveRecord::Migration
  def change
    create_table :salas do |t|
      t.integer :nro_sala
      t.integer :capacidad
      t.timestamps
    end
  end
end

class CreateReservas < ActiveRecord::Migration
  def change
    create_table :reservas do |t|
      t.datetime :fecha_hora
      t.timestamps
    end
  end
end

class CreateSillas < ActiveRecord::Migration
  def change
    create_table :sillas do |t|
      t.boolean :tipo_silla
      t.timestamps
    end
  end
end

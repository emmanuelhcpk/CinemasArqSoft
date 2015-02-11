class FuncionHoras < ActiveRecord::Migration
  def change
    add_column :funcions,:fecha,:datetime
    
  end
end

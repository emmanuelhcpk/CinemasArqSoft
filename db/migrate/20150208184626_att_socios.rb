class AttSocios < ActiveRecord::Migration
  def change
       
    add_column :socios,:nombre,:string
    add_column :socios,:cedula,:string
    add_column :socios,:edad,:string
    add_column :socios,:telefono,:string
  end
end

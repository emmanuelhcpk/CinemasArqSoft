class AdminUser < ActiveRecord::Migration
  def change
    
    add_column :socios,:admin,:boolean , default: false
    
    
  end
end

class AddPictures < ActiveRecord::Migration
  def change
    
    add_column :peliculas,:poster,:string#foto de la peliculit
  end
end

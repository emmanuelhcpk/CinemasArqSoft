class CreateFuncions < ActiveRecord::Migration
  def change
    create_table :funcions do |t|

      t.timestamps
    end
  end
end

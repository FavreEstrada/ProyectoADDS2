class CreateHistorialOcts < ActiveRecord::Migration
  def change
    create_table :historial_octs do |t|

      t.timestamps
    end
  end
end

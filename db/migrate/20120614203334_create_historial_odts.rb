class CreateHistorialOdts < ActiveRecord::Migration
  def change
    create_table :historial_odts do |t|
      t.string :Comentarios

      t.timestamps
    end
  end
end

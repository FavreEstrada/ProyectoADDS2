class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :Nombre
      t.decimal :CostoInstalacion
      t.decimal :PrecioMensual
      t.text :Descripcion

      t.timestamps
    end
  end
end

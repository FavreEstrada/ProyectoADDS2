class CreateOrdenTrabajos < ActiveRecord::Migration
  def change
    create_table :orden_trabajos do |t|
      t.date :FechaPago
      t.decimal :CantidadAPagar
      t.string :TrabajoARealizar
      t.string :Observaciones
      t.string :Comentarios
      t.string :DescripcionTrabajo
      t.integer :NumRecibo

      t.timestamps
    end
  end
end

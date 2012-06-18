class CreateOrdenTrabajos < ActiveRecord::Migration
  def change
    create_table :orden_trabajos do |t|
      t.Date :FechaPago
      t.Decimal :CantidadAPagar
      t.String :TrabajoARealizar
      t.String :Observaciones
      t.String :Comentarios
      t.String :DescripcionTrabajo
      t.int :NumRecibo

      t.timestamps
    end
  end
end

class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.string :NombreTable
      t.string :CampoAfectado
      t.string :ValorAnterior
      t.string :ValorActual
      t.date :Fecha
      t.time :Hora
      t.string :Usuario

      t.timestamps
    end
  end
end

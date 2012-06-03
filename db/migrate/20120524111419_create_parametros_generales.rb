class CreateParametrosGenerales < ActiveRecord::Migration
  def change
    create_table :parametros_generales do |t|
      t.decimal :Descuento
      t.decimal :ISV
      t.date :FechaBackup
      t.date :FechaCorte
      t.date :FechaPago
      t.time :HoraBackup

      t.timestamps
    end
  end
end

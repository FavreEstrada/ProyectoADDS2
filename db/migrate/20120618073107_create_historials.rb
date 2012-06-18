class CreateHistorials < ActiveRecord::Migration
  def change
    create_table :historials do |t|
      t.time :Hora
      t.date :Fecha
      t.string :NumRecibo
      t.decimal :CantidadquePago
      t.decimal :CantidadRestante

      t.timestamps
    end
  end
end

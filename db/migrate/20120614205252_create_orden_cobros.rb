class CreateOrdenCobros < ActiveRecord::Migration
  def change
    create_table :orden_cobros do |t|
      t.date :FechaPago
      t.decimal :CantidadAPagar
      t.integer :NumRecibo

      t.timestamps
    end
  end
end

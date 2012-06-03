class CreateEstadoPagos < ActiveRecord::Migration
  def change
    create_table :estado_pagos do |t|
      t.string :Nombre
      t.text :Descripcion
      t.boolean :Estado

      t.timestamps
    end
  end
end

class CreatePrioridads < ActiveRecord::Migration
  def change
    create_table :prioridads do |t|
      t.string :Nombre
      t.text :Descripcion
      t.boolean :Estado

      t.timestamps
    end
  end
end

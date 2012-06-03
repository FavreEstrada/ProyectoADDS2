class CreateTrabajos < ActiveRecord::Migration
  def change
    create_table :trabajos do |t|
      t.string :Trabajo
      t.text :Descripcion
      t.boolean :Estado
      t.boolean :Pago

      t.timestamps
    end
  end
end

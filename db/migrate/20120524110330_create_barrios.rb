class CreateBarrios < ActiveRecord::Migration
  def change
    create_table :barrios do |t|
      t.string :Nombre
      t.string :Abreviacion
      t.boolean :Estado

      t.timestamps
    end
  end
end

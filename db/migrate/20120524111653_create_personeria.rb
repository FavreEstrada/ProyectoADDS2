class CreatePersoneria < ActiveRecord::Migration
  def change
    create_table :personeria do |t|
      t.string :Nombre
      t.text :Descripcion
      t.boolean :Estado

      t.timestamps
    end
  end
end

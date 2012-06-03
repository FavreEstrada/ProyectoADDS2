class CreatePermisos < ActiveRecord::Migration
  def change
    create_table :permisos do |t|
      t.string :Nombre

      t.timestamps
    end
  end
end

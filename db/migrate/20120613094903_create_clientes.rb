class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :Direccion
      t.text :Observaciones
      t.string :email

      t.timestamps
    end
  end
end

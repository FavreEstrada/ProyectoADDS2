class CreateClienteJuridicos < ActiveRecord::Migration
  def change
    create_table :cliente_juridicos do |t|
      t.string :NombreEmpresa
      t.string :Cargo
      t.string :Responsable
      t.string :fax

      t.timestamps
    end
  end
end

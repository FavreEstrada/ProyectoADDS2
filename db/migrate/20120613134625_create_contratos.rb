class CreateContratos < ActiveRecord::Migration
  def change
    create_table :contratos do |t|
      t.string :Direccion
      t.boolean :Estado
      t.decimal :CostoInstalacion

      t.timestamps
    end
  end
end

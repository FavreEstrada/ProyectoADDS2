class CreateIdentificacions < ActiveRecord::Migration
  def change
    create_table :identificacions do |t|
      t.string :TipoIdentificacion
      t.string :NumeroIdentificacion

      t.timestamps
    end
  end
end

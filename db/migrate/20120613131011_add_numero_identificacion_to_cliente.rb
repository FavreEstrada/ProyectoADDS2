class AddNumeroIdentificacionToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :numeroIdentificacion, :string

  end
end

class AddEstadoClienteIdAndIdentificacionIdToClienteJuridico < ActiveRecord::Migration
  def change
    add_column :cliente_juridicos, :estado_cliente_id, :integer

    add_column :cliente_juridicos, :identificacion_id, :integer

  end
end

class AddClienteJuridicoIdAndBarrioIdAndServicioIdToContrato < ActiveRecord::Migration
  def change
    add_column :contratos, :cliente_juridico_id, :integer

    add_column :contratos, :barrio_id, :integer

    add_column :contratos, :servicio_id, :integer

  end
end

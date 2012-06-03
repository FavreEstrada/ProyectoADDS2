class AddTransEstadoCliente < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    add_column :estado_clientes, :transitionCliente_id, :integer
  end

end

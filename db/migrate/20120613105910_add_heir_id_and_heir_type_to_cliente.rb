class AddHeirIdAndHeirTypeToCliente < ActiveRecord::Migration
  def change
    add_column :clientes, :heir_id, :integer

    add_column :clientes, :heir_type, :string

  end
end

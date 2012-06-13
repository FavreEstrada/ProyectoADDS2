class RemoveNumeroIdentificacionFromIdentificacion < ActiveRecord::Migration
  def up
    remove_column :identificacions, :NumeroIdentificacion
  end

  def down
  end
end

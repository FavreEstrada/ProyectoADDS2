class AddPerfilIdToPermisos < ActiveRecord::Migration
  def change
    add_column :permisos, :perfil_id, :int

  end
end

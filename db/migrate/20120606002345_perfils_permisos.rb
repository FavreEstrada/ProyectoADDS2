class PerfilsPermisos < ActiveRecord::Migration
  def up
    create_table :perfils_permisos, :id => false do |t|
      t.integer :perfil_id
      t.integer :permiso_id
    end
  end

  def down
  end
end

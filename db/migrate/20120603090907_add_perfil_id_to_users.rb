class AddPerfilIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :perfil_id, :int

  end
end

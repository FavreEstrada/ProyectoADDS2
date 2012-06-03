class AddDescripcionToPerfils < ActiveRecord::Migration
  def change
    add_column :perfils, :Descripcion, :text

  end
end

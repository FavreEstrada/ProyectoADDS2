class AddTransEstadoOdt < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    add_column :estado_odts, :transitionODT_id, :integer
  end
end

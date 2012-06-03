class AddTransEstadoCobro < ActiveRecord::Migration
  def up
  end

  def down
  end
  def change
    add_column :estado_cobros, :transitionCobro_id, :integer
  end
end

class AddTransEstadoPago < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change    
    add_column :estado_pagos, :transitionPago_id, :integer
  end
end

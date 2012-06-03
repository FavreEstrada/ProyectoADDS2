class CreatePerfils < ActiveRecord::Migration
  def change
    create_table :perfils do |t|
      t.string :Nombre
      t.timestamps
    end
  end
end

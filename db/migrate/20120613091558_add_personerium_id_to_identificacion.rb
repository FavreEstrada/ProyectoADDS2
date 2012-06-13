class AddPersoneriumIdToIdentificacion < ActiveRecord::Migration
  def change
    add_column :identificacions, :personerium_id, :integer

  end
end

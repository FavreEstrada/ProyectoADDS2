class Permiso < ActiveRecord::Base

    has_and_belongs_to_many :perfil
end

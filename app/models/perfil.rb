class Perfil < ActiveRecord::Base

    has_many :users
    has_and_belongs_to_many :permisos
end

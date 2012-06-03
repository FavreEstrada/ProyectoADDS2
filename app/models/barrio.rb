class Barrio < ActiveRecord::Base
    validates :Nombre, :presence => true
end

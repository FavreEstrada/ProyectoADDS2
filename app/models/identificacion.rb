class Identificacion < ActiveRecord::Base
    validates :TipoIdentificacion, :NumeroIdentificacion, :presence => true
end

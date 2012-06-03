class Servicio < ActiveRecord::Base
    validates :Nombre, :CostoInstalacion, :PrecioMensual, :presence => true
    validates :CostoInstalacion, :PrecioMensual,:numericality => { :greater_than => 0}
end

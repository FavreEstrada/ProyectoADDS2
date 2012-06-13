class Contrato < ActiveRecord::Base
    belongs_to :cliente_juridico
    belongs_to :barrio
    belongs_to :servicio
    validates :cliente_juridico, :barrio, :servicio, :CostoInstalacion, :presence => true
    validates :CostoInstalacion, :numericality => {:greater_than => 0}
end

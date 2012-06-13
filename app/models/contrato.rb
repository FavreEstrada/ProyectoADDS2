class Contrato < ActiveRecord::Base
    belongs_to :cliente_juridico
    belongs_to :barrio
    belongs_to :servicio

end

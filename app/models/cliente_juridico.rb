class ClienteJuridico < ActiveRecord::Base
  acts_as_heir_of :cliente  
 # attr_accessible :NombreEmpresa, :Cargo, :Responsable, :fax, :identificacion_id, :estado_cliente_id
  has_many :contratos
  belongs_to :identificacion
  belongs_to :estado_cliente
end

class ClienteJuridico < ActiveRecord::Base
  acts_as_heir_of :cliente  
  attr_accessible :NombreEmpresa, :Cargo, :Responsable, :fax
end

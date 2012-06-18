class OrdenTrabajo < ActiveRecord::Base
  belongs_to :contrato
  belongs_to :estado_odt
  belongs_to :prioridad
  belongs_to :user

   validates :contrato, :prioridad, :user, :CantidadAPagar, :presence => true
    validates :CantidadAPagar, :numericality => {:greater_than_or_equal_to => 0}

end

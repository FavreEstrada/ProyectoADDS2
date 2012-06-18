class OrdenCobro < ActiveRecord::Base
  belongs_to :contrato
  belongs_to :estado_pagos
  belongs_to :estado_cobros
  belongs_to :user

   validates :contrato, :user, :CantidadAPagar, :presence => true
    validates :CantidadAPagar, :numericality => {:greater_than_or_equal_to => 0}
end

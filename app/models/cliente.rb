class Cliente < ActiveRecord::Base
  acts_as_predecessor      
  #belongs_to :estado_cliente, :class_name => 'EstadoCliente', :foreign_key => :estado_cliente_id
  belongs_to :identificacion
  belongs_to :estado_cliente
  attr_accessible :email, :Direccion, :Observaciones
end

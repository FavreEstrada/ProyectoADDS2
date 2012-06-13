  class EstadoCliente < ActiveRecord::Base
    has_many :transitions, :class_name => 'EstadoCliente', :foreign_key => :transitionCliente_id
    belongs_to :prev_state, :class_name => 'EstadoCliente', :foreign_key => :transitionCliente_id
    has_many :cliente_juridicos
    validates :Nombre, :presence => true
    
end

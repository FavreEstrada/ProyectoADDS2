class EstadoPago < ActiveRecord::Base
    has_many :transitions, :class_name => 'EstadoPago', :foreign_key => :transitionPago_id
    belongs_to :prev_state, :class_name => 'EstadoPago', :foreign_key => :transitionPago_id

    validates :Nombre, :presence => true
end

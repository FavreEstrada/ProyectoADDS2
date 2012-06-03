class EstadoOdt < ActiveRecord::Base
    has_many :transitions, :class_name => 'EstadoOdt', :foreign_key => :transitionODT_id
    belongs_to :prev_state, :class_name => 'EstadoOdt', :foreign_key => :transitionODT_id
    validates :Nombre, :presence => true
end

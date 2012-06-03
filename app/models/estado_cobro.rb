class EstadoCobro < ActiveRecord::Base
    has_many :transitions, :class_name => 'EstadoCobro', :foreign_key => :transitionCobro_id
    belongs_to :prev_state, :class_name => 'EstadoCobro', :foreign_key => :transitionCobro_id
    validates :Nombre, :presence => true
end

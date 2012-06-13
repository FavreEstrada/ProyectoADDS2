class Identificacion < ActiveRecord::Base
    validates :TipoIdentificacion, :presence => true
    belongs_to :personerium
    has_many :cliente_juridicos
end

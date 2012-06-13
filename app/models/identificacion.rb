class Identificacion < ActiveRecord::Base
    validates :TipoIdentificacion, :presence => true
    belongs_to :personerium
end

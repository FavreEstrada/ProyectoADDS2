class ParametrosGenerale < ActiveRecord::Base
    validates :Descuento, :ISV, :presence => true
    validates :Descuento, :ISV, :numericality => {:greater_than => 0}

end

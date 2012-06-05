class ParametrosGenerale < ActiveRecord::Base
    validates :Descuento, :ISV, :presence => true
    validates :Descuento, :ISV, :numericality => {:greater_than => 0}
    validates :FechaBackup, :FechaCorte, :FechaPago, :date => {:after => Time.now, :before => Time.now + 1.year}
end

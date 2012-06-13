class Barrio < ActiveRecord::Base
  has_many :contratos  
  validates :Nombre, :presence => true
end

class Cliente < ActiveRecord::Base
  acts_as_predecessor  
  attr_accessible :Direccion, :Observaciones, :email    
end

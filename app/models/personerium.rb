class Personerium < ActiveRecord::Base
    validates :Nombre, :presence => true
end

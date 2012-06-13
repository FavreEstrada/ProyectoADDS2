class Personerium < ActiveRecord::Base
    validates :Nombre, :presence => true
    has_many :identificacions
end

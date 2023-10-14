class Typeservice < ApplicationRecord
    #Validaciones
    validates :name,    presence: true, uniqueness: true
end

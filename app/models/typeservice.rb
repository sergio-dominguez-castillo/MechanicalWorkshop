# == Schema Information
#
# Table name: typeservices
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Typeservice < ApplicationRecord
    # Relaciones
    has_many :Repairtypeservice, dependent: :destroy
    has_many :repairs, through: :Repairtypeservice

    #Validaciones
    validates :name,    presence: true, uniqueness: true
end

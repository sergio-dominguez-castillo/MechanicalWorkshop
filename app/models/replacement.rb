# == Schema Information
#
# Table name: replacements
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Replacement < ApplicationRecord
    # Relaciones
    has_many :Repairreplacement, dependent: :destroy
    has_many :repairs, through: :Repairreplacement
    #Validaciones
    validates :name,    presence: true, uniqueness: true
end

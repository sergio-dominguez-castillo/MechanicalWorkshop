# == Schema Information
#
# Table name: typestates
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Typestate < ApplicationRecord
    #Validaciones
    validates :name,    presence: true, uniqueness: true
end

class Repairtypeservice < ApplicationRecord
  belongs_to :repair
  belongs_to :typeservice
  
  # Validaciones
  validates :repair, :typeservice, presence: true
end

class Repairreplacement < ApplicationRecord
  belongs_to :repair
  belongs_to :replacement
  # Validaciones
  validates :repair, :replacement, presence: true
end

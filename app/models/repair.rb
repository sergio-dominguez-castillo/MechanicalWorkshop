# == Schema Information
#
# Table name: repairs
#
#  id            :bigint           not null, primary key
#  user_id       :bigint           not null
#  customer_id   :bigint           not null
#  vehicle_id    :bigint           not null
#  typestate_id  :bigint           not null
#  estimateddate :string
#  description   :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Repair < ApplicationRecord
  belongs_to :user
  belongs_to :customer
  belongs_to :vehicle
  belongs_to :typestate

  # Relaciones
  has_many :Repairtypeservice, dependent: :destroy
  has_many :typeservices, through: :Repairtypeservice

  # Relaciones
  has_many :Repairreplacement, dependent: :destroy
  has_many :replacements, through: :Repairreplacement



  #Validaciones
  validates :estimateddate,    presence: true
  validates :description,    presence: true
end

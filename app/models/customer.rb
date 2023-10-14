# == Schema Information
#
# Table name: customers
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  phone      :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Customer < ApplicationRecord
    #Validaciones
    validates :name,    presence: true
    validates :email,   presence: true,
                      format: { with: URI::MailTo::EMAIL_REGEXP }
    validates :phone, presence: true
    validates :address, presence: true
end

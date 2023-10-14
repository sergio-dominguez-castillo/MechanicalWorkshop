# == Schema Information
#
# Table name: vehicles
#
#  id          :bigint           not null, primary key
#  carbrand    :string
#  carmodel    :string
#  patent      :string
#  year        :string
#  customer_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Vehicle < ApplicationRecord
  belongs_to :customer
end

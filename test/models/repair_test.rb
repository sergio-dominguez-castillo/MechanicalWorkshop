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
require "test_helper"

class RepairTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

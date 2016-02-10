# == Schema Information
#
# Table name: swipes
#
#  id          :integer          not null, primary key
#  founder_id  :integer
#  investor_id :integer
#  favourite   :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class SwipeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

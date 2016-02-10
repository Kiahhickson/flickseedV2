# == Schema Information
#
# Table name: investors
#
#  id              :integer          not null, primary key
#  name            :text
#  company_name    :text
#  email_address   :text
#  password_digest :text
#  website         :text
#  title           :string
#  profile_picture :text
#  investor_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class InvestorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

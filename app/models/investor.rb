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

class Investor < ActiveRecord::Base
  has_secure_password
  has_many :swipes
  # has_many :messages 
  # messages belongs_to :investor through => :favourites
end

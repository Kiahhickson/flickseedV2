# == Schema Information
#
# Table name: founders
#
#  id               :integer          not null, primary key
#  name             :text
#  founder_id       :integer
#  company_name     :text
#  email_address    :text
#  password_digest  :text
#  location         :text
#  website          :text
#  profile_picture  :text
#  description      :text
#  industry         :text
#  capital_required :text
#  equity_share     :text
#  video            :text
#  image_one        :text
#  image_two        :text
#  image_three      :text
#  image_four       :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Founder < ActiveRecord::Base

  has_secure_password
  has_many :swipes

  
end

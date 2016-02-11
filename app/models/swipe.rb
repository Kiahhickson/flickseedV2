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

class Swipe < ActiveRecord::Base
  belongs_to :investor
  belongs_to :founder
end

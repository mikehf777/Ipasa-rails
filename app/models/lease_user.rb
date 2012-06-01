class LeaseUser < ActiveRecord::Base
  attr_accessible :user_id
  belongs_to :user
  belongs_to :lease
  has_many :rents 
end
# == Schema Information
#
# Table name: lease_users
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


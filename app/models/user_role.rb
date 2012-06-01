class UserRole < ActiveRecord::Base
  attr_accessible :role_id, :user_id
  belongs_to :user
  belongs_to :role
end
# == Schema Information
#
# Table name: user_roles
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  role_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


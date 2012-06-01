class Role < ActiveRecord::Base
  attr_accessible :nombre
  has_many :users , through: :userroles

end
# == Schema Information
#
# Table name: roles
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


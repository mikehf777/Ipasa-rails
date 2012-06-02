class Structure < ActiveRecord::Base
  attr_accessible :nombre
  has_many :lease_structures
  has_many :leases , through: :lease_structures
end
# == Schema Information
#
# Table name: structures
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


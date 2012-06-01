class LeaseStructure < ActiveRecord::Base
  attr_accessible :cantidad, :structure_id
  belongs_to :structure
  belongs_to :lease
end
# == Schema Information
#
# Table name: lease_structures
#
#  id           :integer         not null, primary key
#  structure_id :integer
#  cantidad     :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#


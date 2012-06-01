class Duty < ActiveRecord::Base
  attr_accessible :fecha, :monto, :property_id
  belongs_to :property
end
# == Schema Information
#
# Table name: duties
#
#  id          :integer         not null, primary key
#  fecha       :date
#  monto       :float
#  property_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


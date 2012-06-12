class Lease < ActiveRecord::Base
  attr_accessible :descripcion, :num_int, :precio, :property_id, :status_renta, :type_id , :user_id
  belongs_to :type
  belongs_to :property
  has_many :lease_structures
  has_many :lease_users
  has_many :structures , through: :lease_structures
  has_many :users , through: :lease_users
end
# == Schema Information
#
# Table name: leases
#
#  id           :integer         not null, primary key
#  num_int      :integer
#  status_renta :boolean
#  type_id      :integer
#  precio       :float
#  descripcion  :text
#  property_id  :integer
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#


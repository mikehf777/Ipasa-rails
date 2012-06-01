class PropertyService < ActiveRecord::Base
  attr_accessible :costo, :descripcion, :property_id, :service_id
  belongs_to :property
  belongs_to :service
end
# == Schema Information
#
# Table name: property_services
#
#  id          :integer         not null, primary key
#  property_id :integer
#  service_id  :integer
#  costo       :float
#  descripcion :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


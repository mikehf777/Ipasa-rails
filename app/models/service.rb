class Service < ActiveRecord::Base
  attr_accessible :nombre
  has_many :properties , through: :propertyservices
end
# == Schema Information
#
# Table name: services
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


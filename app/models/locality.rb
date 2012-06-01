class Locality < ActiveRecord::Base
  attr_accessible :nombre
  has_many :properties
end
# == Schema Information
#
# Table name: localities
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


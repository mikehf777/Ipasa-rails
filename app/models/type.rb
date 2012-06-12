class Type < ActiveRecord::Base
  attr_accessible :nombre
  has_many :profiles
end
# == Schema Information
#
# Table name: types
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


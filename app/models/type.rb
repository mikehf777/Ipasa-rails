class Type < ActiveRecord::Base
  attr_accessible :descripcion, :nombre
  has_many :leases
end
# == Schema Information
#
# Table name: types
#
#  id          :integer         not null, primary key
#  nombre      :string(255)
#  descripcion :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


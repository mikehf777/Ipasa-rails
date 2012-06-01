class Photo < ActiveRecord::Base
  attr_accessible :descripcion, :property_id, :ruta
end
# == Schema Information
#
# Table name: photos
#
#  id          :integer         not null, primary key
#  property_id :integer
#  descripcion :text
#  ruta        :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


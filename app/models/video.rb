class Video < ActiveRecord::Base
  attr_accessible :property_id, :url , :descripcion
  belongs_to :property
end
# == Schema Information
#
# Table name: videos
#
#  id          :integer         not null, primary key
#  url         :string(255)
#  property_id :integer
#  descripcion :text
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


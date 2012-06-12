class Picture < ActiveRecord::Base
  attr_accessible :picture_content_type, :picture_file_name, :picture_file_size, :picture_upload_date, :property_id ,  :picture_descripcion , :picture 
  belongs_to :property			
  has_attached_file :picture , :styles => {:large => "650x400" , :thumb => "70x70>"  } , 
  :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension",
  :url => "/assets/images/:id/:style/:basename.:extension"
end
# == Schema Information
#
# Table name: pictures
#
#  id                   :integer         not null, primary key
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer
#  picture_upload_date  :datetime
#  picture_descripcion  :string(255)
#  property_id          :integer
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#


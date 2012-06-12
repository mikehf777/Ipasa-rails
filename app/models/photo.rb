class Photo < ActiveRecord::Base
attr_accessible :photo_content_type, :photo_descripcion, :photo_file_name, :photo_file_size, :profile_id , :photo
belongs_to :profile
has_attached_file :photo , :styles => {:large => "650x400" , :thumb => "70x70>"  } , 
  :path => ":rails_root/public/assets/images/inmueble/:id/:style/:basename.:extension",
  :url => "/assets/images/inmueble/:id/:style/:basename.:extension"
end
# == Schema Information
#
# Table name: photos
#
#  id                 :integer         not null, primary key
#  photo_file_name    :string(255)
#  photo_content_type :string(255)
#  photo_file_size    :integer
#  photo_descripcion  :string(255)
#  profile_id         :integer
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#


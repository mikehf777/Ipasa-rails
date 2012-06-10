class Picture < ActiveRecord::Base
  attr_accessible :picture_content_type, :picture_file_name, :picture_file_size, :picture_upload_date, :property_id , :picture
  belongs_to :property			
  has_attached_file :picture , :styles => {:large => "640x480" , :medium => "300x300" , :thumb => "100x100>"  }

end

class Profile < ActiveRecord::Base
  attr_accessible :descripcion, :nombre, :type_id , :property_id
  belongs_to :property
  belongs_to :type
end

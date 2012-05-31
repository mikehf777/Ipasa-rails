class PropertyUser < ActiveRecord::Base
  attr_accessible :property_id, :user_id
end

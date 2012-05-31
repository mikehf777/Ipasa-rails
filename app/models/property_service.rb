class PropertyService < ActiveRecord::Base
  attr_accessible :costo, :descripcion, :property_id, :service_id
end

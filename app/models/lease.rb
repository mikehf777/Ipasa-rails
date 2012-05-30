class Lease < ActiveRecord::Base
  attr_accessible :descripcion, :num_int, :precio, :property_id, :status_renta, :type_id
end

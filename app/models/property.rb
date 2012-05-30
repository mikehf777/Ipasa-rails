class Property < ActiveRecord::Base
  attr_accessible :descripcion, :direccion, :google, :locality_id, :nombre, :num_ext, :ofertada
end

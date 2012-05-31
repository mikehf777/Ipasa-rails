class Rent < ActiveRecord::Base
  attr_accessible :descuento, :fecha_final, :fecha_inicio, :property_user_id
end

class Property < ActiveRecord::Base	
  attr_accessible :descripcion, :direccion, :google, :locality_id, :nombre, :num_ext, :ofertada , :user_id , :catastro
  belongs_to :locality
  belongs_to :user
  has_many :duties
  has_many :videos
  has_many :photos
  has_many :property_services
  has_many :services , through: :property_services   
  has_many :leases
end
# == Schema Information
#
# Table name: properties
#
#  id          :integer         not null, primary key
#  locality_id :integer
#  user_id     :integer
#  nombre      :string(255)
#  propietario :string(255)
#  num_ext     :integer
#  direccion   :text
#  google      :string(255)
#  descripcion :text
#  ofertada    :boolean
#  catastro    :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  clave       :string(255)
#


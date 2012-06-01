class User < ActiveRecord::Base
  attr_accessible :apellidos, :celular, :email, :encrypted_password, :nombre, :salt, :sexo, :telefono
  has_many :leases , through: :leaseusers
  has_many :roles , through: :userroles

end
# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  nombre             :string(255)
#  apellidos          :string(255)
#  telefono           :string(255)
#  celular            :string(255)
#  sexo               :boolean
#  email              :string(255)
#  encrypted_password :string(255)
#  salt               :string(255)
#  created_at         :datetime        not null
#  updated_at         :datetime        not null
#


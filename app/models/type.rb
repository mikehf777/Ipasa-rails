class Type < ActiveRecord::Base
  attr_accessible :nombre
  has_many :profiles
end

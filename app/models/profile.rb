class Profile < ActiveRecord::Base
  attr_accessible :descripcion, :nombre, :type_id , :property_id , :photos_attributes
  belongs_to :property
  belongs_to :type

  #paperclip
  has_many :photos , :dependent => :destroy
  accepts_nested_attributes_for :photos , 
  :reject_if => lambda { |a| a[:photo_descripcion].blank? } , 
  :allow_destroy => true
end
# == Schema Information
#
# Table name: profiles
#
#  id          :integer         not null, primary key
#  nombre      :string(255)
#  descripcion :string(255)
#  type_id     :integer
#  property_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


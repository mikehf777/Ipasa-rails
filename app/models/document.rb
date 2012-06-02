class Document < ActiveRecord::Base
  attr_accessible :nombre
  has_many :rent_documents
  has_many :rents , through: :rent_documents
end
# == Schema Information
#
# Table name: documents
#
#  id         :integer         not null, primary key
#  nombre     :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


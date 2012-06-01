class Document < ActiveRecord::Base
  attr_accessible :nombre
  has_many :rents , through: :rentdocuments
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


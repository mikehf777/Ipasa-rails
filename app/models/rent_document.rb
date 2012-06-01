class RentDocument < ActiveRecord::Base
  attr_accessible :document_id, :rent_id, :url
  belongs_to :document
  belongs_to :rent
end
# == Schema Information
#
# Table name: rent_documents
#
#  id          :integer         not null, primary key
#  rent_id     :integer
#  document_id :integer
#  url         :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#


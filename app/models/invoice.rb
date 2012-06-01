class Invoice < ActiveRecord::Base
  attr_accessible :fecha_vencimiento, :folio, :monto, :rent_id
  belongs_to :rent
  has_many :surcharges
  
end
# == Schema Information
#
# Table name: invoices
#
#  id                :integer         not null, primary key
#  folio             :string(255)
#  monto             :float
#  fecha_vencimiento :date
#  rent_id           :integer
#  created_at        :datetime        not null
#  updated_at        :datetime        not null
#


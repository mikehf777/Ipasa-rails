class Surcharge < ActiveRecord::Base
  attr_accessible :folio, :invoice_id, :monto
  belongs_to :invoices
end
# == Schema Information
#
# Table name: surcharges
#
#  id         :integer         not null, primary key
#  folio      :string(255)
#  monto      :float
#  invoice_id :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#


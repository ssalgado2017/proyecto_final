class Quotation < ApplicationRecord
  belongs_to :state
  belongs_to :client
  has_many :client_quotations, dependent: :destroy
  has_many :clients,through: :client_quotations, dependent: :destroy
end

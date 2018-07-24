class ClientQuotation < ApplicationRecord
  belongs_to :client
  belongs_to :quotation
end

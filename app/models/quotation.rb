class Quotation < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :user
end

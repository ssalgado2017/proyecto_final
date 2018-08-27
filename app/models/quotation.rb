class Quotation < ApplicationRecord
  belongs_to :state
  belongs_to :client
  belongs_to :user
  mount_uploader :document, DocumentUploader

  def self.created_last_week
    group_by_week(:created_at, last: 8).count
  end

  def self.group_by_state	
     quotation.group(:state).count
  end
end

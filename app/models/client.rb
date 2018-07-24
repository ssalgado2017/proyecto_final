class Client < ApplicationRecord
  belongs_to :institution
  has_many :user_clients, dependent: :destroy
  has_many :users,through: :user_clients, dependent: :destroy

  has_many :client_quotations, dependent: :destroy
  has_many :quotations,through: :client_quotations, dependent: :destroy
end

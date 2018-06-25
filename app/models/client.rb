class Client < ApplicationRecord
  belongs_to :institution
  has_many :user_clients
  has_many :users,through: :user_clients
end

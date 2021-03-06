class Client < ApplicationRecord
  belongs_to :institution
  has_many :user_clients, dependent: :destroy
  has_many :users,through: :user_clients, dependent: :destroy


  def fullname
    "#{name} #{last_name}"
  end

end

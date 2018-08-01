class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :user_clients, dependent: :destroy
  has_many :clients,through: :user_clients, dependent: :destroy
  has_many :quotations, dependent: :destroy
end

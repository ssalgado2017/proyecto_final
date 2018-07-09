class Institution < ApplicationRecord
	has_many :clients, dependent: :destroy
end

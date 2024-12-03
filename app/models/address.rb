class Address < ApplicationRecord
  belongs_to :proponente, dependent: :destroy
end
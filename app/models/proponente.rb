class Proponente < ApplicationRecord
  has_one :address, dependent: :destroy
end

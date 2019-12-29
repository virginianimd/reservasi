class Invoice < ApplicationRecord
  has_many :tamus
  has_many :tipepakets
end

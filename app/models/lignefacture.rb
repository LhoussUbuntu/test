class Lignefacture < ApplicationRecord
  belongs_to :facture
  belongs_to :product
end

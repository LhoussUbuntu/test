class Facture < ApplicationRecord
    belongs_to :user
    belongs_to :client
    has_many :lignefactures


    REGELEMENT = ["Espéce", "Chèque", "Virement"]
    def self.regelement
        REGELEMENT.map { |t| [t, t]}
    end
end

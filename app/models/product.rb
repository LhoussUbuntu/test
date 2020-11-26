class Product < ApplicationRecord
    belongs_to :user
    has_many :lignefactures

    require 'csv'

    def self.import(file)
        CSV.foreach(file.path, headers: true) do |row|
            Product.create!(row.to_hash)
        end
    end

    TAUXTVA = [0, 7, 14, 20]
    def self.taux_tva
        TAUXTVA.map { |t| [t, t]}
    end
end

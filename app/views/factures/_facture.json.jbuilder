json.extract! facture, :id, :n_facute, :date, :code_client, :cree_bar, :montant_ttc, :montant_ht, :montant_tva, :est_valid, :est_regle, :mode_reglement, :created_at, :updated_at
json.url facture_url(facture, format: :json)

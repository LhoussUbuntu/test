class CreateFactures < ActiveRecord::Migration[6.0]
  def change
    create_table :factures do |t|
      t.integer :n_facute
      t.datetime :date
      t.integer :code_client
      t.integer :cree_bar
      t.float :montant_ttc
      t.integer :montant_ht
      t.integer :montant_tva
      t.boolean :est_valid
      t.boolean :est_regle
      t.string :mode_reglement

      t.timestamps
    end
  end
end

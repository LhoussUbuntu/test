class CreateLignefactures < ActiveRecord::Migration[6.0]
  def change
    create_table :lignefactures do |t|
      t.integer :code_produit
      t.integer :quantite
      t.float :prix_unitaire_ht
      t.references :facture, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end

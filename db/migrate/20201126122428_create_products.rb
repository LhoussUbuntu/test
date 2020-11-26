class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.float :price_ht
      t.float :taux_tva
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

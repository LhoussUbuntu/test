class AddReferencesToFacture < ActiveRecord::Migration[6.0]
  def change
    add_column :factures, :client_id, :integer
    add_column :factures, :user_id, :integer
  end
end

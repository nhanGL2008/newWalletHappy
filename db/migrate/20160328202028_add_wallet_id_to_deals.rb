class AddWalletIdToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :wallet_id, :integer
  end
end

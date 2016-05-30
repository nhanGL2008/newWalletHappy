class AddWalletIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :wallet_id, :integer
  end
end

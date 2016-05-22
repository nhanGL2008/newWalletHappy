class AddCatgoryIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :category_id, :interger
  end
end

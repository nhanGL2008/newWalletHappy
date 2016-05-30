class Wallet < ActiveRecord::Base
	has_many :transactions #-> wallet.transactions
	belongs_to :user
end

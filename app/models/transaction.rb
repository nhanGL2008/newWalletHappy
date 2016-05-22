class Transaction < ActiveRecord::Base
	belongs_to :wallet
	belongs_to :category
	def owner
		self.category_id = current_category.id
		self.wallet_id = current_wallet.id
	end

	def self.by_year(year)
		where('extract(year from day) = ?', year)
	end
end

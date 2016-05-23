class Transaction < ActiveRecord::Base
	belongs_to :wallet #, :class_name => Wallet, foreign_key: :wallet_id
	belongs_to :category#, :class_name => Category, foreign_key: :category_id

	def self.by_year(year)
		where('extract(year from day) = ?', year)
	end
end

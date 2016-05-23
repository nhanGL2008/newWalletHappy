class Wallet < ActiveRecord::Base
	has_many :transactions #-> wallet.transactions
	belongs_to :user, class_name: User, foreign_key: :user_id


end

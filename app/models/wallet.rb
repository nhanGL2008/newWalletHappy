class Wallet < ActiveRecord::Base
	has_many :deals
end

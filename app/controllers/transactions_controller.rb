class TransactionsController < ApplicationController
	before_action :find_transaction, only: [:show, :edit, :update, :destroy]
	
	def index
		@transactions = Transaction.all
		@walletname = Wallet.where(:name => params[:name])
	end
	def show
	end

	def self.by_year(year)
		where('extract(year from day) = ?', year)
	end

	def group_transactions
		Transaction.group_by_day(:create_at)
	end

	def new
		@transaction = Transaction.new
	end
	def create
		@transaction = Transaction.new(transactions_params)

		if @transaction.save
			redirect_to @transaction
		else
			render "New"
		end
	end
	def edit
		
	end
	def update
		if @transaction.update(transactions_params)
			redirect_to @transaction
		else
			render "Edit"
		end
	end

	def destroy
		@transaction.destroy
		redirect_to root_path
	end

	private

	def transactions_params
		params.require(:transaction).permit(:day, :money, :note, :wallet_id)
	end
	def find_transaction
		@transaction = Transaction.find(params[:id])
	end
end
